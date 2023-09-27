#set DESIGN "sha3_high_perf"
set DESIGN "gfx"
set UF "0.80"
set MAX_UTIL "0.90"
set ver_name ${DESIGN}_${UF}_${MAX_UTIL}
set result_path "/home/ischo/PDN_SYNTH/200_synthesis/snps14/201_ICC2/designs/${ver_name}_pitch_6.0"
cd ${result_path}
set postfix "w_0.06_p_6.0" ;#PDN information

write_parasitics -output  ./results/$ver_name/${DESIGN}_${postfix}
write_sdc -output ./results/$ver_name/${DESIGN}_${postfix}.sdc
write_sdf ./results/$ver_name/${DESIGN}_${postfix}.sdf

write_def -include_tech_via_definitions -include {nets cells specialnets vias rows_tracks ports} ./results/$ver_name/${DESIGN}_${postfix}.def 
write_lef -design ${DESIGN}_3_pdn -slice_polygon ./results/$ver_name/${DESIGN}_${postfix}.lef

update_timing

write_timing_file -output ./results/$ver_name/${DESIGN}_${postfix}.timing

#report_congestion -rerun_global_router -mode global_route_cell_edge_based -layers {M1 M2 M3 M4} > ./results/$ver_name/congestion_before_route.txt
#report_congestion -rerun_global_router -mode global_route_cell_edge_based -layers [get_layers -filter "layer_type==interconnect"] > ./results/$ver_name/congestion_cts_pdn.txt


# PLOC file
set ploc_file [open ./results/$ver_name/${DESIGN}_${postfix}.ploc w]
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

