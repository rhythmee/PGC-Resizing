set STRAP_WIDTH_M3 0.1
set STRAP_WIDTH_M4 0.1
set STRAP_WIDTH_M5 0.1
set STRAP_WIDTH_M6 0.1
set STRAP_WIDTH_M7 0.1

set VDD_VSS_PITCH 0.5 ;#max. width < 0.5
set STRAP_PITCH 6.0

set START_VDD [expr $STRAP_PITCH/2]
set START_VSS [expr $START_VDD+$VDD_VSS_PITCH]

set layout_bbox [get_attr [get_designs] boundary_bbox]
set layout_llx [lindex [lindex $layout_bbox 0] 0]
set layout_lly [lindex [lindex $layout_bbox 0] 1]
set layout_urx [lindex [lindex $layout_bbox 1] 0]
set layout_ury [lindex [lindex $layout_bbox 1] 1]

create_pg_strap -net VDD -layer M3 -direction vertical -drc no_check -via_rule {{intersection: adjacent}}   \
                -start $START_VDD -stop $layout_urx -pitch $STRAP_PITCH -width $STRAP_WIDTH_M3 -low_end $layout_lly -high_end $layout_ury
create_pg_strap -net VSS -layer M3 -direction vertical -drc no_check -via_rule {{intersection: adjacent}}   \
                -start $START_VSS -stop $layout_urx -pitch $STRAP_PITCH  -width $STRAP_WIDTH_M3 -low_end $layout_lly -high_end $layout_ury

create_pg_strap -net VDD -layer M4 -direction horizontal -drc no_check -via_rule {{intersection: adjacent}}   \
                -start $START_VDD -stop $layout_ury -pitch $STRAP_PITCH -width $STRAP_WIDTH_M4 -low_end $layout_llx -high_end $layout_urx
create_pg_strap -net VSS -layer M4 -direction horizontal -drc no_check -via_rule {{intersection: adjacent}}   \
                -start $START_VSS -stop $layout_ury -pitch $STRAP_PITCH  -width $STRAP_WIDTH_M4 -low_end $layout_llx -high_end $layout_urx

create_pg_strap -net VDD -layer M5 -direction vertical -drc no_check -via_rule {{intersection: adjacent}}   \
                -start $START_VDD -stop $layout_urx -pitch $STRAP_PITCH  -width $STRAP_WIDTH_M5 -low_end $layout_lly -high_end $layout_ury
create_pg_strap -net VSS -layer M5 -direction vertical -drc no_check -via_rule {{intersection: adjacent}}   \
                -start $START_VSS -stop $layout_urx -pitch $STRAP_PITCH  -width $STRAP_WIDTH_M5 -low_end $layout_lly -high_end $layout_ury

create_pg_strap -net VDD -layer M6 -direction horizontal -drc no_check -via_rule {{intersection: adjacent}}   \
                -start $START_VDD -stop $layout_ury -pitch $STRAP_PITCH  -width $STRAP_WIDTH_M6 -low_end $layout_llx -high_end $layout_urx
create_pg_strap -net VSS -layer M6 -direction horizontal -drc no_check -via_rule {{intersection: adjacent}}   \
                -start $START_VSS -stop $layout_ury -pitch $STRAP_PITCH  -width $STRAP_WIDTH_M6 -low_end $layout_llx -high_end $layout_urx

create_pg_strap -net VDD -layer M7 -direction vertical -drc no_check -via_rule {{intersection: adjacent}}   \
                -start $START_VDD -stop $layout_urx -pitch $STRAP_PITCH  -width $STRAP_WIDTH_M7 -low_end $layout_lly -high_end $layout_ury
create_pg_strap -net VSS -layer M7 -direction vertical -drc no_check -via_rule {{intersection: adjacent}}   \
                -start $START_VSS -stop $layout_ury -pitch $STRAP_PITCH  -width $STRAP_WIDTH_M7 -low_end $layout_lly -high_end $layout_ury

create_pg_via -nets {VDD VSS} -from_layers M3 -to_layers M1 -drc no_check
create_pg_std_cell_conn_pattern std_rail_pattern -layers {M1}
set_pg_strategy strategy -core -pattern {{name: std_rail_pattern}{nets: {VDD VSS}}}
compile_pg -strategies strategy -ignore_drc 

connect_pg_net -net VDD [get_pins -hier -quiet */VDD]
connect_pg_net -net VSS [get_pins -hier -quiet */VSS]
connect_pg_net

check_pg_connectivity
