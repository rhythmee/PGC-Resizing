#--------------------------------------------------------------------------------
# Author: Jinwook Jung
# Last Modification: 2016-12-22
#--------------------------------------------------------------------------------
	set CURRENT_DIR [pwd]
	#source -echo -verbose $ROOT_DIR/000_SETUP/dc_setup.tcl
	source -echo -verbose $ROOT_DIR/scripts/dc_setup.tcl
	set hdlin_check_no_latch true

    set high_fanout_net_threshold 9000
#--------------------------------------------------------------------------------
# Additional Variables
#--------------------------------------------------------------------------------
	# default: recursive rtl read
	if { ![info exists is_recursive_read] } { set is_recursive_read 1 }
	
	# default: verilog hdl
	if { ![info exists is_verilog] } { set is_verilog 1 }
	
	if { $is_verilog } { set HDL_LANG verilog; } \
	else { set HDL_LANG vhdl; }


#--------------------------------------------------------------------------------
# Do logic synthesis
#--------------------------------------------------------------------------------
	# Synthesize rtl @ period = 100.0ns -- minimum effort
	# the obtained critical path delay will be used as our baseline clock period
	set CLOCK_PERIOD 100.0
	#source ../dc_syn_read.tcl
	source ${ROOT_DIR}/scripts/dc_syn_read.tcl

#	exit
