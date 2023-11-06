# 2023-10-31
# Sizing PGCs in local boundary
set target_boundary1 {{32 42.5} {40 78}}
set target_boundary2 {{112 62} {121.5 67}}
set target_boundary3 {{132 42} {141 57}}
set target_boundary4 {{112 12} {141 27}}

# INIT LIB 
set_host_options -max_cores 2
open_lib ./works/${ver_name}
#open_block ${DESIGN}_3_pdn_w_32X 
open_block ${DESIGN}_1_placed_w_32X 

## Remove "local" PGC(32X) array 
##set object_header [get_cells * -filter {name =~ "*HEAD*"}] 
#set object_header [get_cells -filter {name =~ "*HEAD*"} -within $target_boundary1 ]
#set_fixed_objects $object_header -unfix
#remove_physical_objects $object_header
#
#set object_header [get_cells -filter {name =~ "*HEAD*"} -within $target_boundary2 ]
#set_fixed_objects $object_header -unfix
#remove_physical_objects $object_header
#set object_header [get_cells -filter {name =~ "*HEAD*"} -within $target_boundary3 ]
#set_fixed_objects $object_header -unfix
#remove_physical_objects $object_header
#set object_header [get_cells -filter {name =~ "*HEAD*"} -within $target_boundary4 ]
#set_fixed_objects $object_header -unfix
#remove_physical_objects $object_header
#
#
## Insert PGC(16X) array 
#create_cell_array -lib_cell HEADX16_RVT -x_pitch 20 -y_pitch 10 -x_offset 3.0 -boundary $target_boundary1
#create_cell_array -lib_cell HEADX16_RVT -x_pitch 20 -y_pitch 10 -x_offset 3.0 -boundary $target_boundary2
#create_cell_array -lib_cell HEADX16_RVT -x_pitch 20 -y_pitch 10 -x_offset 3.0 -boundary $target_boundary3
#create_cell_array -lib_cell HEADX16_RVT -x_pitch 20 -y_pitch 10 -x_offset 3.0 -boundary $target_boundary4
#
#save_block -as ${DESIGN}_1_placed_w_32X_local_sizing_2
#close_blocks -force
#
#open_block ${DESIGN}_1_placed_w_32X_local_sizing_2

# Edit PGC cell to routing blockage
set working_design [current_design]
#32X
open_block -read /home/hot_data/DB/snps32/SAED32_EDK/lib/stdcell_rvt/ndm/saed32rvt_pg_c.ndm:HEADX32_RVT.frame
set_attribute -objects [get_routing_blockages RB_0] -name layer -value [get_layers M2]
set_attribute -objects [get_routing_blockages RB_0] -name boundary -value {{0.1 0.1} {0.1 3.0} {7.0 3.0} {7.0 0.1}}
set_working_design_stack ${working_design}
#16X
open_block -read /home/hot_data/DB/snps32/SAED32_EDK/lib/stdcell_rvt/ndm/saed32rvt_pg_c.ndm:HEADX16_RVT.frame 
set_attribute -objects [get_routing_blockages RB_0] -name layer -value [get_layers M2]
set_attribute -objects [get_routing_blockages RB_0] -name boundary -value {{0.1 0.1} {0.1 3.2} {4.2 3.2} {4.2 0.1}}
set_working_design_stack ${working_design}

##create power rail (M1 row)
create_pg_std_cell_conn_pattern std_rail_pattern -layers {M1}
set_pg_strategy strategy -core -pattern {{name: std_rail_pattern}{nets: {VDD VSS}}}
compile_pg -strategies strategy

#connect_pg_net -net $NDM_POWER_NET [get_pins -hierarchical "*/VDD"]
#connect_pg_net -net $NDM_GROUND_NET [get_pins -hierarchical "*/VSS"]
connect_pg_net -net VDD [get_pins -hier -quiet */VDD]
connect_pg_net -net VSS [get_pins -hier -quiet */VSS]
connect_pg_net



############################################################
#####                     ROUTING                      #####
############################################################

# detailed routing 5 times incrementally
set total_iter 5
set step_iter 1
set postfix "6_route_w_32X_wo_cts_iter"
route_auto -max_detail_route_iterations 1
save_block -as ${DESIGN}_${postfix}_1

set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_${postfix}_1/attach/design.errdm/zroute.err]
set errors [get_drc_errors -error_data $data]

set fp [open ./results/$ver_name/drv_${postfix}_1.txt w]
source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
close $fp

foreach iter [list 2 3 4 5] {
    route_detail -incremental true -max_number_iterations ${step_iter}
    save_block -as ${DESIGN}_${postfix}_${iter}
    set data [open_drc_error_data -file_name ./works/${ver_name}/${DESIGN}_${postfix}_${iter}/attach/design.errdm/zroute.err]
    set errors [get_drc_errors -error_data $data]

    set fp [open ./results/$ver_name/drv_${postfix}_${iter}.txt w]
    source -e -v ${ICC_DIR}/scripts/extract_drv.tcl
    close $fp
}

close_blocks -force

close_lib

exit
