###################################################################################
###################################   INITLIB   ###################################
###################################################################################

set_host_options -max_cores 2

source -e -v ${ICC_DIR}/scripts/common_setup.tcl ;#take a DESIGN_NAME (top-level cell)

set link_library   $LINK_LIBRARY_FILES
set target_library $TARGET_LIBRARY_FILES

set UF ${UF}

set ver_name ${ver_name} ;# from shell script

file mkdir ./works
file mkdir -p ./results/${ver_name}
file mkdir -p ./reports/${ver_name}

if {![file exists ./works/${ver_name}]} {
    create_lib  -ref_libs $NDM_REFERENCE_LIB_DIRS  -technology $TECH_FILE ./works/${ver_name}
} else {
    open_lib ./works/${ver_name}

}

read_verilog $DC_DIR/designs/${DESIGN}/results/${DESIGN_NAME}.mapped.v
#link_block

read_parasitic_tech -tlup $TLUPLUS_MAX_FILE  -layermap  $MAP_FILE -name tlup_max
read_parasitic_tech -tlup $TLUPLUS_MIN_FILE  -layermap  $MAP_FILE -name tlup_min

remove_corners -all
remove_modes -all
remove_scenarios -all
create_corner slow

set_parasitics_parameters \
    -early_spec tlup_max \
    -late_spec tlup_max \
    -corners {slow}

create_mode func
current_mode func

create_scenario -mode func -corner slow -name func_slow
current_scenario func_slow

read_sdc $DC_DIR/designs/${DESIGN}/results/${DESIGN_NAME}.mapped.sdc

source -e -v ${ICC_DIR}/scripts/common_icc2_options.tcl

####################################################################################
###################################   FLOORPLAN   ##################################
####################################################################################

set_wire_track_pattern -site_def unit -layer M1  -mode uniform -mask_constraint {mask_two mask_one} \
-coord 0.037 -space 0.074 -direction vertical

create_net -power VDD
create_net -ground VSS
create_port -direction "in" {VDD VSS}
connect_net VDD [get_ports VDD]
connect_net VSS [get_ports VSS]
connect_pg_net -net VDD [get_pins -hier -quiet */VDD]
connect_pg_net -net VSS [get_pins -hier -quiet */VSS]


initialize_floorplan -core_utilization $UF -core_offset $core_offset -side_ratio "$aspect_ratio_width $aspect_ratio_height" ;#UF and AR
place_pins -port [get_ports]
create_placement -floorplan -timing_driven
legalize_placement

save_block -as ${DESIGN}_0_floorplan

set_app_options -name place.coarse.congestion_driven_max_util -value $MAX_UTIL
set_app_options -name place_opt.place.congestion_effort -value high
set_app_options -name place_opt.flow.trial_clock_tree -value true 

place_opt
legalize_placement
check_legality -verbos
save_block -as ${DESIGN}_1_placed
report_congestion -rerun_global_router -mode global_route_cell_edge_based -layers [get_layers -filter "layer_type==interconnect"] > ./results/$ver_name/congestion_place.txt


set save_file [open ./results/$ver_name/core_area.txt w]
set core_area [get_attribute [get_core_area ] bbox]
set core_x [lindex $core_area 0]
set core_y [lindex $core_area 1]
puts $save_file "$core_x $core_y"
close $save_file


set_ideal_network [all_fanout -flat -clock_tree ]
set_app_options -name clock_opt.place.congestion_effort -value high 

set_clock_tree_options -target_skew 0.3
set_clock_transition 0.15 -max [get_clocks *]
clock_opt

create_pg_std_cell_conn_pattern std_rail_pattern -layers {M1}
set_pg_strategy strategy -core -pattern {{name: std_rail_pattern}{nets: {VDD VSS}}}
compile_pg -strategies strategy

#connect_pg_net -net $NDM_POWER_NET [get_pins -hierarchical "*/VDD"]
#connect_pg_net -net $NDM_GROUND_NET [get_pins -hierarchical "*/VSS"]
connect_pg_net -net VDD [get_pins -hier -quiet */VDD]
connect_pg_net -net VSS [get_pins -hier -quiet */VSS]
connect_pg_net

############################################################
#create_routing_rule ROUTE_RULES_1 \
#  -widths {M3 0.2 M4 0.2 } \
#  -spacings {M3 0.42 M4 0.63 }

#set_clock_routing_rules -rules CLK_SPACING -min_routing_layer M2 -max_routing_layer M4
#set_clock_tree_options -target_latency 0.000 -target_skew 0.000 
#set_clock_tree_options -target_skew 0.3
#set_clock_transition -max 0.15


#write_verilog ../results/${DESIGN}.cts.gate.v
#write_verilog ${RESULTS_DIR}/${DESIGN}.cts.gate.v
#write_verilog ${RESULTS_DIR}/${ver_name}.cts.gate.v


ungroup -all -flatten
define_name_rules verilog -remove_port_bus -remove_internal_net_bus
write_verilog ./results/${ver_name}/${ver_name}.cts.gate.v
write_verilog -split_bus -include { scalar_wire_declarations } ./results/${ver_name}/${DESIGN}.v

report_qor > ./reports/${ver_name}/${ver_name}.clock_qor.rpt
report_clock_timing  -type skew > results/$ver_name/${ver_name}.clock_skew.rpt

report_congestion -rerun_global_router -mode global_route_cell_edge_based -layers [get_layers -filter "layer_type==interconnect"] > ./results/$ver_name/congestion_cts.txt

save_block -as ${DESIGN}_2_cts


############################################################
#####                    PDN SYNTH                    ######
############################################################

source -e -v ${ICC_DIR}/scripts/PDN.tcl
save_block -as ${DESIGN}_3_pdn

set save_file "./results/$ver_name/clock_nets.txt"
set clk_nets [get_nets -filter { net_type =~ "clock" or net_type =~ "power" or net_type =~ "ground" } ]
report_nets -significant_digits 3 -physical -nosplit $clk_nets > $save_file

#write_parasitics -output  ./results/${DESIGN}
#write_sdc -output ./results/${DESIGN}.sdc
#write_sdf ./results/${DESIGN}.sdf
write_parasitics -output  ./results/$ver_name/${DESIGN}
write_sdc -output ./results/$ver_name/${DESIGN}.sdc
write_sdf ./results/$ver_name/${DESIGN}.sdf

write_def -include_tech_via_definitions -include {nets cells specialnets vias rows_tracks ports} ./results/$ver_name/${DESIGN}.def ;#add ports
write_lef -design ${DESIGN}_3_pdn -slice_polygon ./results/$ver_name/${DESIGN}.lef

update_timing

write_timing_file -output ./results/$ver_name/${DESIGN}.timing

#report_congestion -rerun_global_router -mode global_route_cell_edge_based -layers {M1 M2 M3 M4} > ./results/$ver_name/congestion_before_route.txt
report_congestion -rerun_global_router -mode global_route_cell_edge_based -layers [get_layers -filter "layer_type==interconnect"] > ./results/$ver_name/congestion_cts_pdn.txt

set signal_nets [get_nets -filter { net_type =~ "signal" }]
report_nets -connections -significant_digits 3 -physical -nosplit $signal_nets > ./results/$ver_name/signal_nets_before_route.txt

# PLOC file
set ploc_file [open ./results/$ver_name/${DESIGN}.ploc w]
set all_power_vias [ filter_collection [get_vias -filter "upper_layer_name==M7"] "net_type==power" ] ;#M7 top
set all_ground_vias [ filter_collection [get_vias -filter "upper_layer_name==M7"] "net_type==ground" ]
set count_power_pad 0
set count_ground_pad 0
foreach_in_collection itr ${all_power_vias} {
    set via_name 	 [ get_attribute ${itr} name ]
    set via_center 	 [ get_attribute ${itr} origin ]
    set via_center_x [ lindex ${via_center} 0 ]
    set via_center_y [ lindex ${via_center} 1 ]
    puts ${ploc_file} "VDD${count_power_pad} ${via_center_x} ${via_center_y} M7 POWER"
    set count_power_pad [ expr ${count_power_pad} + 1 ]
}
foreach_in_collection itr ${all_ground_vias} {
    set via_name 	 [ get_attribute ${itr} name ]
    set via_center 	 [ get_attribute ${itr} origin ]
    set via_center_x [ lindex ${via_center} 0 ]
    set via_center_y [ lindex ${via_center} 1 ]
    puts ${ploc_file} "VSS${count_ground_pad} ${via_center_x} ${via_center_y} M7 GROUND"
    set count_ground_pad [ expr ${count_ground_pad} + 1 ]
}
close ${ploc_file}

close_blocks -force
close_lib

exit

#----------------------------------------------------------------------------------------------------------------------------------

#if { 0 } {
#report_area
#report_timing
#report_power 
#
#save_block -as ${TOP_DESIGN}_4_finished
#
#
#change_names -rules verilog -verbose
#write_verilog \
#	-include {pg_netlist unconnected_ports} \
#	../output/${TOP_DESIGN}.v
#
#write_gds -design ${TOP_DESIGN}_4_finished \
#	  -layer_map $GDS_MAP_FILE \
#	  -keep_data_type \
#	  -fill include \
#	  -output_pin all \
#	  -merge_files "$STD_CELL_GDS $IO_STD_CELL_GDS $SRAMLP_SINGLELP_GDS" \
#	  -long_names \
#	  ../output/${TOP_DESIGN}.gds
#
##write_parasitics -output    {../results/${TOP_DESIGN}.spf}
#}
#
#open_block ${DESIGN}_3_pdn
#
#set total_iter 5
#set step_iter 1
#set count_iter 0
#route_auto -max_detail_route_iterations 1
#check_routes > ./reports/$ver_name/detailed_route_1_wo_decap.rpt
#save_block -as ${DESIGN}_6_route_wo_decap_iter_1
#
#set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_6_route_wo_decap_iter_1/attach/design.errdm/zroute.err]
#set errors [get_drc_errors -error_data $data]
#
#set fp [open ./results/$ver_name/drv_wo_decap_iter_1.txt w]
#source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
#close $fp
#
#foreach iter [list 2 3 4 5] {
#    route_detail -incremental true -max_number_iterations ${step_iter}
#    check_routes > ./reports/$ver_name/detailed_route_${iter}_wo_decap.rpt
#    save_block -as ${DESIGN}_6_route_wo_decap_iter_${iter}
#    set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_6_route_wo_decap_iter_${iter}/attach/design.errdm/zroute.err]
#    set errors [get_drc_errors -error_data $data]
#
#    set fp [open ./results/$ver_name/drv_wo_decap_iter_${iter}.txt w]
#    source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
#    close $fp
#}
#
#close_blocks -force
#
## route_w_decap_reshaped
#
##set total_iter 5
##set step_iter 1
##set count_iter 0
##route_auto -max_detail_route_iterations $iter
#open_block ${DESIGN}_5_decap
##open_block -read /home/ischo/decap_insertion/201_ICC2/designs/pci_0.80_0.90_0.10_pg_M567_pad_10_cpp_200_track_pattern/CLIBs/saed14rvt_ss0p72v125c.ndm:SAEDRVT14_DCAP_PV1ECO_6.frame
#open_block -read ./CLIBs/saed14rvt_ss0p72v125c.ndm:SAEDRVT14_DCAP_PV1ECO_6.frame
#set_attribute -objects [get_terminals -design saed14rvt_ss0p72v125c:SAEDRVT14_DCAP_PV1ECO_6.frame VDDR] -name boundary -value {{0.1340 0.0570} {0.5320 0.5430}}
#set_attribute -objects [get_terminals -design saed14rvt_ss0p72v125c:SAEDRVT14_DCAP_PV1ECO_6.frame VDDR_1] -name boundary -value {{0.1340 0.0570} {0.5320 0.5430}}
##set_working_design_stack pci_0.80_0.90_ver_3:pci_5_decap.design
#set_working_design_stack ${ver_name}:${DESIGN}_5_decap.design
#
#route_auto -max_detail_route_iterations 1
#check_routes > ./reports/$ver_name/detailed_route_1_w_decap.rpt
#save_block -as ${DESIGN}_6_route_w_decap_iter_1
#
#set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_6_route_w_decap_iter_1/attach/design.errdm/zroute.err]
#set errors [get_drc_errors -error_data $data]
#
#set fp [open ./results/$ver_name/drv_w_decap_iter_1.txt w]
#source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
#close $fp
#
#foreach iter [list 2 3 4 5] {
##    open_block ${DESIGN}_5_pdn
##    open_block -read /home/ischo/decap_insertion/201_ICC2/designs/pci_0.80_0.90_0.10_pg_M567_pad_10_cpp_200_track_pattern/CLIBs/saed14rvt_ss0p72v125c.ndm:SAEDRVT14_DCAP_PV1ECO_6.frame
##    set_attribute -objects [get_terminals -design saed14rvt_ss0p72v125c:SAEDRVT14_DCAP_PV1ECO_6.frame VDDR] -name boundary -value {{0.1340 0.0570} {0.5320 0.5430}}
##    set_attribute -objects [get_terminals -design saed14rvt_ss0p72v125c:SAEDRVT14_DCAP_PV1ECO_6.frame VDDR_1] -name boundary -value {{0.1340 0.0570} {0.5320 0.5430}}
##    set_working_design_stack pci_0.80_0.90_ver_3:pci_5_decap.design
#
#    route_detail -incremental true -max_number_iterations ${step_iter}
#    check_routes > ./reports/$ver_name/detailed_route_${iter}_w_decap.rpt
#    save_block -as ${DESIGN}_6_route_w_decap_iter_${iter}
#
#    set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_6_route_w_decap_iter_${iter}/attach/design.errdm/zroute.err]
#    set errors [get_drc_errors -error_data $data]
#
#    set fp [open ./results/$ver_name/drv_w_decap_iter_${iter}.txt w]
#    source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
#    close $fp
#}
#
#close_blocks -force
#
#close_lib
#
#exit
#
#
