###################################################################################
###################################   INITLIB   ###################################
###################################################################################

set_host_options -max_cores 2

source ${ICC_DIR}/scripts/common_setup_snps32.tcl ;#take a DESIGN_NAME (top-level cell)

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

read_verilog $DC_DIR/designs/${DESIGN}_snps32/results/${DESIGN_NAME}.mapped.v
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

read_sdc $DC_DIR/designs/${DESIGN}_snps32/results/${DESIGN_NAME}.mapped.sdc

source -e -v ${ICC_DIR}/scripts/common_icc2_options.tcl

####################################################################################
###################################   FLOORPLAN   ##################################
####################################################################################

#set_wire_track_pattern -site_def unit -layer M1  -mode uniform -mask_constraint {mask_two mask_one} \
#-coord 0.037 -space 0.074 -direction vertical

create_net -power VDD
create_net -ground VSS
create_port -direction "in" {VDD VSS}
connect_net VDD [get_ports VDD]
connect_net VSS [get_ports VSS]
connect_pg_net -net VDD [get_pins -hier -quiet */VDD]
connect_pg_net -net VSS [get_pins -hier -quiet */VSS]


initialize_floorplan -core_utilization $UF -core_offset $core_offset -side_ratio "$aspect_ratio_width $aspect_ratio_height" ;#UF and AR

save_block -as ${DESIGN}_00_init_fp
close_blocks -force

open_block ${DESIGN}_00_init_fp

# Insert PGC(32X) array
create_cell_array -lib_cell HEADX32_RVT -x_pitch 20 -y_pitch 10 -x_offset 12.0

place_pins -port [get_ports]
create_placement -floorplan -timing_driven
legalize_placement

#save_block -as ${DESIGN}_0_floorplan
save_block -as ${DESIGN}_0_floorplan_w_32X

set_app_options -name place.coarse.congestion_driven_max_util -value $MAX_UTIL
set_app_options -name place_opt.place.congestion_effort -value high
set_app_options -name place_opt.flow.trial_clock_tree -value true ;#added on 0624

place_opt
legalize_placement
check_legality -verbos
#save_block -as ${DESIGN}_1_placed
save_block -as ${DESIGN}_1_placed_w_32X


set save_file [open ./results/$ver_name/core_area.txt w]

set core_area [get_attribute [get_core_area ] bbox]

set core_x [lindex $core_area 0]
set core_y [lindex $core_area 1]

puts $save_file "$core_x $core_y"

close $save_file

close_blocks -force

open_block ${DESIGN}_1_placed_w_32X

#Edit PGC cell to big routing blockage
open_block -read /home/hot_data/DB/snps32/SAED32_EDK/lib/stdcell_rvt/ndm/saed32rvt_pg_c.ndm:HEADX32_RVT.frame 
set_attribute -objects [get_routing_blockages RB_0] -name layer -value [get_layers M2]
set_attribute -objects [get_routing_blockages RB_0] -name boundary -value {{0.1 0.1} {0.1 3.0} {7.0 3.0} {7.0 0.1}}
set_working_design_stack ${ver_name}:${DESIGN}_1_placed_w_32X.design


set_ideal_network [all_fanout -flat -clock_tree ]
set_app_options -name clock_opt.place.congestion_effort -value high ;#added on 0624

set_clock_tree_options -target_skew 0.3
set_clock_transition 0.15 -max [get_clocks *]
clock_opt

#create power rail (M1 row)
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

#report_qor > ${REPORTS_DIR}/${DESIGN}.clock_qor.rpt
report_qor > ./reports/${ver_name}/${ver_name}.clock_qor.rpt

#report_clock_timing  -type skew > ../results/${DESIGN}.clock_skew.rpt
#report_clock_timing  -type skew > ${REPORTS_DIR}/${ver_name}.clock_skew.rpt
report_clock_timing  -type skew > results/$ver_name/${ver_name}.clock_skew.rpt

save_block -as ${DESIGN}_2_cts_w_32X


############################################################
#####                    PDN SYNTH                    ######
############################################################

source -e -v ${ICC_DIR}/scripts/PDN.tcl

save_block -as ${DESIGN}_3_pdn_w_32X

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
write_lef -design ${DESIGN}_3_pdn_w_32X -slice_polygon ./results/$ver_name/${DESIGN}.lef

update_timing

write_timing_file -output ./results/$ver_name/${DESIGN}.timing

report_congestion -rerun_global_router -mode global_route_cell_edge_based -layers {M1 M2 M3 M4} > ./results/$ver_name/congestion_32X.txt

set signal_nets [get_nets -filter { net_type =~ "signal" }]
report_nets -connections -significant_digits 3 -physical -nosplit $signal_nets > ./results/$ver_name/signal_nets.txt



############################################################
#####                     ROUTING                      #####
############################################################

# detailed routing 5 times incrementally
set total_iter 5
set step_iter 1
set count_iter 0
route_auto -max_detail_route_iterations 1
check_routes > ./reports/$ver_name/detailed_route_1.rpt
save_block -as ${DESIGN}_4_route_w_32X_iter_1

set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_4_route_w_32X_iter_1/attach/design.errdm/zroute.err]
set errors [get_drc_errors -error_data $data]

set fp [open ./results/$ver_name/drv_w_32X_iter_1.txt w]
source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
close $fp

foreach iter [list 2 3 4 5] {
    route_detail -incremental true -max_number_iterations ${step_iter}
    check_routes > ./reports/$ver_name/detailed_route_${iter}.rpt
    save_block -as ${DESIGN}_4_route_w_32X_iter_${iter}
    set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_4_route_w_32X_iter_${iter}/attach/design.errdm/zroute.err]
    set errors [get_drc_errors -error_data $data]

    set fp [open ./results/$ver_name/drv_w_32X_iter_${iter}.txt w]
    source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
    close $fp
}

close_blocks -force



###########################################
########   Restart with 2X PGC   #########
###########################################
#
#open_block ${DESIGN}_1_placed_w_32X 
#
## Remove PGC(32X) array 
#set object_header [get_cells * -filter {name =~ "*HEAD*"}] 
#set_fixed_objects $object_header -unfix 
#remove_physical_objects $object_header
#
## Insert PGC(2X) array 
#create_cell_array -lib_cell HEADX2_RVT -x_pitch 20 -y_pitch 10 -x_offset 12.0
#
#save_block -as ${DESIGN}_1_placed_w_2X
#close_blocks -force
#
#open_block ${DESIGN}_1_placed_w_2X
#
##Edit PGC cell to big routing blockage
#open_block -read /home/hot_data/DB/snps32/SAED32_EDK/lib/stdcell_rvt/ndm/saed32rvt_pg_c.ndm:HEADX2_RVT.frame 
#set_attribute -objects [get_routing_blockages RB_0] -name layer -value [get_layers M2]
#set_attribute -objects [get_routing_blockages RB_0] -name boundary -value {{0.1 0.1} {0.1 3.2} {1.9 3.2} {1.9 0.1}}
#set_working_design_stack ${ver_name}:${DESIGN}_1_placed_w_2X.design
#
#
#set_ideal_network [all_fanout -flat -clock_tree ]
#set_app_options -name clock_opt.place.congestion_effort -value high ;#added on 0624
#
#set_clock_tree_options -target_skew 0.3
#set_clock_transition 0.15 -max [get_clocks *]
##clock_opt -to build_clock
#clock_opt
#
##create power rail (M1 row)
#create_pg_std_cell_conn_pattern std_rail_pattern -layers {M1}
#set_pg_strategy strategy -core -pattern {{name: std_rail_pattern}{nets: {VDD VSS}}}
#compile_pg -strategies strategy
#
##connect_pg_net -net $NDM_POWER_NET [get_pins -hierarchical "*/VDD"]
##connect_pg_net -net $NDM_GROUND_NET [get_pins -hierarchical "*/VSS"]
#connect_pg_net -net VDD [get_pins -hier -quiet */VDD]
#connect_pg_net -net VSS [get_pins -hier -quiet */VSS]
#connect_pg_net
#
#
#ungroup -all -flatten
#define_name_rules verilog -remove_port_bus -remove_internal_net_bus
#write_verilog ./results/${ver_name}/${ver_name}.cts.gate.v
#write_verilog -split_bus -include { scalar_wire_declarations } ./results/${ver_name}/${DESIGN}.v
#
##report_qor > ${REPORTS_DIR}/${DESIGN}.clock_qor.rpt
#report_qor > ./reports/${ver_name}/${ver_name}.clock_qor.rpt
#
##report_clock_timing  -type skew > ../results/${DESIGN}.clock_skew.rpt
##report_clock_timing  -type skew > ${REPORTS_DIR}/${ver_name}.clock_skew.rpt
#report_clock_timing  -type skew > results/$ver_name/${ver_name}.clock_skew.rpt
#
#save_block -as ${DESIGN}_2_cts_w_2X
#
#
#############################################################
######                    PDN SYNTH                    ######
#############################################################
#
#source -e -v ${ICC_DIR}/scripts/PDN.tcl
##source -e -v ${ICC_DIR}/scripts/PDN_sparse.tcl
##source -e -v ${ICC_DIR}/scripts/PDN_new.tcl
##source -e -v ${ICC_DIR}/scripts/PDN_trial.tcl
#
#connect_pg_net -net VDD [get_pins -hier -quiet */VDD]
#connect_pg_net -net VSS [get_pins -hier -quiet */VSS] 
#connect_pg_net
#
#save_block -as ${DESIGN}_3_pdn_w_2X
#
#set save_file "./results/$ver_name/clock_nets_w_2X.txt"
#set clk_nets [get_nets -filter { net_type =~ "clock" or net_type =~ "power" or net_type =~ "ground" } ]
#report_nets -significant_digits 3 -physical -nosplit $clk_nets > $save_file
##write_parasitics -output  ./results/${DESIGN}
##write_sdc -output ./results/${DESIGN}.sdc
##write_sdf ./results/${DESIGN}.sdf
#write_parasitics -output  ./results/$ver_name/${DESIGN}
#write_sdc -output ./results/$ver_name/${DESIGN}.sdc
#write_sdf ./results/$ver_name/${DESIGN}.sdf
#
#write_def -include_tech_via_definitions -include {nets cells specialnets vias rows_tracks ports} ./results/$ver_name/${DESIGN}.def ;#add ports
#write_lef -design ${DESIGN}_3_pdn_w_2X -slice_polygon ./results/$ver_name/${DESIGN}.lef
#
#update_timing
#
#write_timing_file -output ./results/$ver_name/${DESIGN}.timing
#
#report_congestion -rerun_global_router -mode global_route_cell_edge_based -layers {M1 M2 M3 M4} > ./results/$ver_name/congestion_w_2X.txt
#
#set signal_nets [get_nets -filter { net_type =~ "signal" }]
#report_nets -connections -significant_digits 3 -physical -nosplit $signal_nets > ./results/$ver_name/signal_nets_w_2X.txt
#
#
#
#############################################################
######                     ROUTING                      #####
#############################################################
#
## detailed routing 5 times incrementally
#set total_iter 5
#set step_iter 1
#set count_iter 0
#route_auto -max_detail_route_iterations 1
#check_routes > ./reports/$ver_name/detailed_route_1.rpt
#save_block -as ${DESIGN}_5_route_w_2X_iter_1
#
#set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_5_route_w_2X_iter_1/attach/design.errdm/zroute.err]
#set errors [get_drc_errors -error_data $data]
#
#set fp [open ./results/$ver_name/drv_w_2X_iter_1.txt w]
#source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
#close $fp
#
#foreach iter [list 2 3 4 5] {
#    route_detail -incremental true -max_number_iterations ${step_iter}
#    check_routes > ./reports/$ver_name/detailed_route_${iter}.rpt
#    save_block -as ${DESIGN}_5_route_w_2X_iter_${iter}
#    set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_5_route_w_2X_iter_${iter}/attach/design.errdm/zroute.err]
#    set errors [get_drc_errors -error_data $data]
#
#    set fp [open ./results/$ver_name/drv_w_2X_iter_${iter}.txt w]
#    source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
#    close $fp
#}
#
#close_blocks -force
#
###########################################
########   Restart with 16X PGC   #########
###########################################
#
#open_block ${DESIGN}_1_placed_w_32X 
#
## Remove PGC(32X) array 
#set object_header [get_cells * -filter {name =~ "*HEAD*"}] 
#set_fixed_objects $object_header -unfix 
#remove_physical_objects $object_header
#
## Insert PGC(16X) array 
#create_cell_array -lib_cell HEADX16_RVT -x_pitch 20 -y_pitch 10 -x_offset 12.0
#
#save_block -as ${DESIGN}_1_placed_w_16X
#close_blocks -force
#
#open_block ${DESIGN}_1_placed_w_16X
#
##Edit PGC cell to big routing blockage
#open_block -read /home/hot_data/DB/snps32/SAED32_EDK/lib/stdcell_rvt/ndm/saed32rvt_pg_c.ndm:HEADX16_RVT.frame 
#set_attribute -objects [get_routing_blockages RB_0] -name layer -value [get_layers M2]
#set_attribute -objects [get_routing_blockages RB_0] -name boundary -value {{0.1 0.1} {0.1 3.2} {4.2 3.2} {4.2 0.1}}
#set_working_design_stack ${ver_name}:${DESIGN}_1_placed_w_16X.design
#
#
#set_ideal_network [all_fanout -flat -clock_tree ]
#set_app_options -name clock_opt.place.congestion_effort -value high ;#added on 0624
#
#set_clock_tree_options -target_skew 0.3
#set_clock_transition 0.15 -max [get_clocks *]
##clock_opt -to build_clock
#clock_opt
#
##create power rail (M1 row)
#create_pg_std_cell_conn_pattern std_rail_pattern -layers {M1}
#set_pg_strategy strategy -core -pattern {{name: std_rail_pattern}{nets: {VDD VSS}}}
#compile_pg -strategies strategy
#
##connect_pg_net -net $NDM_POWER_NET [get_pins -hierarchical "*/VDD"]
##connect_pg_net -net $NDM_GROUND_NET [get_pins -hierarchical "*/VSS"]
#connect_pg_net -net VDD [get_pins -hier -quiet */VDD]
#connect_pg_net -net VSS [get_pins -hier -quiet */VSS]
#connect_pg_net
#
#
#ungroup -all -flatten
#define_name_rules verilog -remove_port_bus -remove_internal_net_bus
#write_verilog ./results/${ver_name}/${ver_name}.cts.gate.v
#write_verilog -split_bus -include { scalar_wire_declarations } ./results/${ver_name}/${DESIGN}.v
#
##report_qor > ${REPORTS_DIR}/${DESIGN}.clock_qor.rpt
#report_qor > ./reports/${ver_name}/${ver_name}.clock_qor.rpt
#
##report_clock_timing  -type skew > ../results/${DESIGN}.clock_skew.rpt
##report_clock_timing  -type skew > ${REPORTS_DIR}/${ver_name}.clock_skew.rpt
#report_clock_timing  -type skew > results/$ver_name/${ver_name}.clock_skew.rpt
#
#save_block -as ${DESIGN}_2_cts_w_16X
#
#
#############################################################
######                    PDN SYNTH                    ######
#############################################################
#
#source -e -v ${ICC_DIR}/scripts/PDN.tcl
##source -e -v ${ICC_DIR}/scripts/PDN_sparse.tcl
##source -e -v ${ICC_DIR}/scripts/PDN_new.tcl
##source -e -v ${ICC_DIR}/scripts/PDN_trial.tcl
#
#connect_pg_net -net VDD [get_pins -hier -quiet */VDD]
#connect_pg_net -net VSS [get_pins -hier -quiet */VSS] 
#connect_pg_net
#
#save_block -as ${DESIGN}_3_pdn_w_16X
#
#set save_file "./results/$ver_name/clock_nets_w_16X.txt"
#set clk_nets [get_nets -filter { net_type =~ "clock" or net_type =~ "power" or net_type =~ "ground" } ]
#report_nets -significant_digits 3 -physical -nosplit $clk_nets > $save_file
##write_parasitics -output  ./results/${DESIGN}
##write_sdc -output ./results/${DESIGN}.sdc
##write_sdf ./results/${DESIGN}.sdf
#write_parasitics -output  ./results/$ver_name/${DESIGN}
#write_sdc -output ./results/$ver_name/${DESIGN}.sdc
#write_sdf ./results/$ver_name/${DESIGN}.sdf
#
#write_def -include_tech_via_definitions -include {nets cells specialnets vias rows_tracks ports} ./results/$ver_name/${DESIGN}.def ;#add ports
#write_lef -design ${DESIGN}_3_pdn_w_16X -slice_polygon ./results/$ver_name/${DESIGN}.lef
#
#update_timing
#
#write_timing_file -output ./results/$ver_name/${DESIGN}.timing
#
#report_congestion -rerun_global_router -mode global_route_cell_edge_based -layers {M1 M2 M3 M4} > ./results/$ver_name/congestion_w_16X.txt
#
#set signal_nets [get_nets -filter { net_type =~ "signal" }]
#report_nets -connections -significant_digits 3 -physical -nosplit $signal_nets > ./results/$ver_name/signal_nets_w_16X.txt
#
#
#
#############################################################
######                     ROUTING                      #####
#############################################################
#
## detailed routing 5 times incrementally
#set total_iter 5
#set step_iter 1
#set count_iter 0
#route_auto -max_detail_route_iterations 1
#check_routes > ./reports/$ver_name/detailed_route_1.rpt
#save_block -as ${DESIGN}_5_route_w_16X_iter_1
#
#set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_5_route_w_16X_iter_1/attach/design.errdm/zroute.err]
#set errors [get_drc_errors -error_data $data]
#
#set fp [open ./results/$ver_name/drv_w_16X_iter_1.txt w]
#source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
#close $fp
#
#foreach iter [list 2 3 4 5] {
#    route_detail -incremental true -max_number_iterations ${step_iter}
#    check_routes > ./reports/$ver_name/detailed_route_${iter}.rpt
#    save_block -as ${DESIGN}_5_route_w_16X_iter_${iter}
#    set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_5_route_w_16X_iter_${iter}/attach/design.errdm/zroute.err]
#    set errors [get_drc_errors -error_data $data]
#
#    set fp [open ./results/$ver_name/drv_w_16X_iter_${iter}.txt w]
#    source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
#    close $fp
#}
#
#close_blocks -force

###########################################
########   Restart with 32X PGC   #########
###########################################
#
#open_block ${DESIGN}_1_placed_w_32X 
#
## Remove PGC(32X) array 
#set object_header [get_cells * -filter {name =~ "*HEAD*"}] 
#set_fixed_objects $object_header -unfix 
#remove_physical_objects $object_header
#
## Insert PGC(16X) array 
#create_cell_array -lib_cell HEADX32_RVT -x_pitch 40 -y_pitch 10
#
#save_block -as ${DESIGN}_1_placed_w_32X_half
#close_blocks -force
#
#open_block ${DESIGN}_1_placed_w_32X_half
#
##Edit PGC cell to big routing blockage
#open_block -read /home/hot_data/DB/snps32/SAED32_EDK/lib/stdcell_rvt/ndm/saed32rvt_pg_c.ndm:HEADX32_RVT.frame 
#set_attribute -objects [get_routing_blockages RB_0] -name layer -value [get_layers M2]
#set_attribute -objects [get_routing_blockages RB_0] -name boundary -value {{0.1 0.1} {0.1 3.2} {7.0 3.2} {7.0 0.1}}
#set_working_design_stack ${ver_name}:${DESIGN}_1_placed_w_32X_half.design
#
#
#set_ideal_network [all_fanout -flat -clock_tree ]
#set_app_options -name clock_opt.place.congestion_effort -value high ;#added on 0624
#
#set_clock_tree_options -target_skew 0.3
#set_clock_transition 0.15 -max [get_clocks *]
##clock_opt -to build_clock
#clock_opt
#
##create power rail (M1 row)
#create_pg_std_cell_conn_pattern std_rail_pattern -layers {M1}
#set_pg_strategy strategy -core -pattern {{name: std_rail_pattern}{nets: {VDD VSS}}}
#compile_pg -strategies strategy
#
##connect_pg_net -net $NDM_POWER_NET [get_pins -hierarchical "*/VDD"]
##connect_pg_net -net $NDM_GROUND_NET [get_pins -hierarchical "*/VSS"]
#connect_pg_net -net VDD [get_pins -hier -quiet */VDD]
#connect_pg_net -net VSS [get_pins -hier -quiet */VSS]
#connect_pg_net
#
#
#ungroup -all -flatten
#define_name_rules verilog -remove_port_bus -remove_internal_net_bus
#write_verilog ./results/${ver_name}/${ver_name}.cts.gate.v
#write_verilog -split_bus -include { scalar_wire_declarations } ./results/${ver_name}/${DESIGN}.v
#
##report_qor > ${REPORTS_DIR}/${DESIGN}.clock_qor.rpt
#report_qor > ./reports/${ver_name}/${ver_name}.clock_qor.rpt
#
##report_clock_timing  -type skew > ../results/${DESIGN}.clock_skew.rpt
##report_clock_timing  -type skew > ${REPORTS_DIR}/${ver_name}.clock_skew.rpt
#report_clock_timing  -type skew > results/$ver_name/${ver_name}.clock_skew.rpt
#
#save_block -as ${DESIGN}_2_cts_w_32X_half
#
#
#############################################################
######                    PDN SYNTH                    ######
#############################################################
#
#source -e -v ${ICC_DIR}/scripts/PDN.tcl
##source -e -v ${ICC_DIR}/scripts/PDN_sparse.tcl
##source -e -v ${ICC_DIR}/scripts/PDN_new.tcl
##source -e -v ${ICC_DIR}/scripts/PDN_trial.tcl
#
#connect_pg_net -net VDD [get_pins -hier -quiet */VDD]
#connect_pg_net -net VSS [get_pins -hier -quiet */VSS] 
#connect_pg_net
#
#save_block -as ${DESIGN}_3_pdn_w_32X_half
#
#set save_file "./results/$ver_name/clock_nets_w_32X_half.txt"
#set clk_nets [get_nets -filter { net_type =~ "clock" or net_type =~ "power" or net_type =~ "ground" } ]
#report_nets -significant_digits 3 -physical -nosplit $clk_nets > $save_file
##write_parasitics -output  ./results/${DESIGN}
##write_sdc -output ./results/${DESIGN}.sdc
##write_sdf ./results/${DESIGN}.sdf
#write_parasitics -output  ./results/$ver_name/${DESIGN}
#write_sdc -output ./results/$ver_name/${DESIGN}.sdc
#write_sdf ./results/$ver_name/${DESIGN}.sdf
#
#write_def -include_tech_via_definitions -include {nets cells specialnets vias rows_tracks ports} ./results/$ver_name/${DESIGN}.def ;#add ports
#write_lef -design ${DESIGN}_3_pdn_w_32X_half -slice_polygon ./results/$ver_name/${DESIGN}.lef
#
#update_timing
#
#write_timing_file -output ./results/$ver_name/${DESIGN}.timing
#
#report_congestion -rerun_global_router -mode global_route_cell_edge_based -layers {M1 M2 M3 M4} > ./results/$ver_name/congestion_w_32X_half.txt
#
#set signal_nets [get_nets -filter { net_type =~ "signal" }]
#report_nets -connections -significant_digits 3 -physical -nosplit $signal_nets > ./results/$ver_name/signal_nets_w_32X_half.txt
#
#
#
#############################################################
######                     ROUTING                      #####
#############################################################
#
## detailed routing 5 times incrementally
#set total_iter 5
#set step_iter 1
#set count_iter 0
#route_auto -max_detail_route_iterations 1
#check_routes > ./reports/$ver_name/detailed_route_1.rpt
#save_block -as ${DESIGN}_5_route_w_32X_half_iter_1
#
#set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_5_route_w_32X_half_iter_1/attach/design.errdm/zroute.err]
#set errors [get_drc_errors -error_data $data]
#
#set fp [open ./results/$ver_name/drv_w_32X_half_iter_1.txt w]
#source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
#close $fp
#
#foreach iter [list 2 3 4 5] {
#    route_detail -incremental true -max_number_iterations ${step_iter}
#    check_routes > ./reports/$ver_name/detailed_route_${iter}.rpt
#    save_block -as ${DESIGN}_5_route_w_32X_half_iter_${iter}
#    set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_5_route_w_32X_half_iter_${iter}/attach/design.errdm/zroute.err]
#    set errors [get_drc_errors -error_data $data]
#
#    set fp [open ./results/$ver_name/drv_w_32X_half_iter_${iter}.txt w]
#    source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
#    close $fp
#}
#
#close_blocks -force

close_lib

exit

