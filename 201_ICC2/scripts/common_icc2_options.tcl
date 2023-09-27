
# Floorplan
set core_util 0.9
set core_offset 0.9
set aspect_ratio_width 1.0
set aspect_ratio_height 1.0
#set aspect_ratio_height ${AR}

# Placement
# remove_buffer_trees -all

set_app_options -name place.coarse.continue_on_missing_scandef -value true
# set_app_options -name place_opt.place.congestion_effort -value none
# set_app_options -name place_opt.initial_place.effort -value low
# set_app_options -name place_opt.final_place.effort -value low
# set_app_options -name place_opt.initial_drc.global_route_based -value 1


# CTS
#set_clock_routing_rule -default_rule -min_routing_layer M3 -max_routing_layer M4 
#set_clock_routing_rule -default_rule -min_routing_layer M4 -max_routing_layer M5 
set_clock_routing_rule -default_rule -min_routing_layer M3 -max_routing_layer M6

set_max_transition 0.05 [all_clocks] -clock_path
   
#set cts_ref_cells [get_lib_cells { \
#    */*INV_X*B_A9TR \    
#}]
#
#set_lib_cell_purpose -exclude cts [get_lib_cells ]
#set_lib_cell_purpose -include none $cts_ref_cells
#set_lib_cell_purpose -include cts $cts_ref_cells
   
# Routing
set_attribute [get_layer M1] routing_direction vertical
set_attribute [get_layer M2] routing_direction horizontal
set_attribute [get_layer M3] routing_direction vertical
set_attribute [get_layer M4] routing_direction horizontal
set_attribute [get_layer M5] routing_direction vertical
set_attribute [get_layer M6] routing_direction horizontal
set_attribute [get_layer M7] routing_direction vertical
set_attribute [get_layer IA] routing_direction horizontal
set_attribute [get_layer IB] routing_direction vertical
set_attribute [get_layer LB] routing_direction horizontal

set_ignored_layers -min_routing_layer $MIN_ROUTING_LAYER -max_routing_layer ${MAX_ROUTING_LAYER} ;#common_setup.tcl
# set_ignored_layers -rc_congestion_ignored_layers {IA IB LB}

# Prevent routing of non-preferred direction
#set_app_options -block [current_block] \
#   -name route.common.extra_nonpreferred_direction_wire_cost_multiplier_by_layer_name \
#   -value { {M1 20.0} {M2 20.0} {M3 20.0} {M4 20.0} {M5 20.0} {M6 20.0} {M7 20.0} }
#   
## Routing spacing (min spacing is 0.05)
#create_routing_rule routing_rule -default_reference_rule -spacings {M3 0.1 M4 0.1 M5 0.1 M6 0.1 M7 0.1} ;# changed at designs_8
#set_routing_rule [get_net * -f "net_type==clock || net_type==signal"] -rule routing_rule -min_routing_layer M2 -max_routing_layer M5

# set_app_options -name route.global.interactive_multithread_mode -value true
# set_app_options -name route.common.enable_multi_thread -value true

#non-default routing rule
#create_routing_rule routing_rule_1 -default_reference_rule -spacings {M1 0.06 M2 0.039} ;# 1.5 time both
#create_routing_rule routing_rule_2 -default_reference_rule -spacings {M1 0.06 M2 0.052} ;# M1 1.5 time, M2 2 time
#create_routing_rule routing_rule_3 -default_reference_rule -spacings {M1 0.08 M2 0.052} ;# 2 time both
#create_routing_rule routing_rule_4 -default_reference_rule -spacings {M1 0.068 M2 0.039} ;# M1 1.7, M2 1.5
#create_routing_rule routing_rule_5 -default_reference_rule -spacings {M1 0.04 M2 0.039} ;# M1 1, M2 1.5
#create_routing_rule routing_rule_6 -default_reference_rule -spacings {M1 0.04 M2 0.052} ;# M1 1, M2 2
#create_routing_rule routing_rule_7 -default_reference_rule -spacings {M1 0.026 M2 0.052 M3 0.026 M4 0.04} ;# only M2 2time


