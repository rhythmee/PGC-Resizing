#------------------------------------------------------------------------------
# Author: Jinwook Jung
# Last Modified: 2016-12-22
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Read design
#------------------------------------------------------------------------------
	define_design_lib WORK -path ./WORK
	
	if { $is_recursive_read } {
		analyze -format $HDL_LANG -autoread -top ${rm_design_name} -recursive ${rm_rtl_path}
	} else {
		analyze -format $HDL_LANG ${RTL_SOURCE_FILES}
	}
	elaborate ${DESIGN_NAME}

    #source -e -v ${SETUP_DIR}/test.upf
	
	#write -hierarchy -format ddc -output ${RESULTS_DIR}/${DCRM_ELABORATED_DESIGN_DDC_OUTPUT_FILE}
	#source /home/sam28/sunwha/LOW_ASPECT/000_SETUP/set_dont_use.tcl
	#source /home/sam28/ygjung/current_waveform/100_DC/scripts/dont_use_dc.tcl

#------------------------------------------------------------------------------
# CLOCK setup: clock port and period
#------------------------------------------------------------------------------
	if { ![info exists CLOCK_PORT] } { set CLOCK_PORT blif_clk_net }
	if { ![info exists CLOCK_PERIOD] } { set CLOCK_PERIOD 0 }
	
	create_clock ${CLOCK_PORT} -period $CLOCK_PERIOD
	#create_clock MY_CLK -period 10
	


#------------------------------------------------------------------------------
# Define design environment
#------------------------------------------------------------------------------
#	set_operating_conditions ${rm_max_opcond}
#	set_driving_cell -lib_cell INV_X16M_A9TR [remove_from_collection [all_inputs] ${CLOCK_PORT}]
#	set_driving_cell -lib_cell INV_X16M_A9TR ${CLOCK_PORT}
	set_load 0.05 [all_outputs]
	#set_max_transition [expr 0.15 * [get_attr [get_clocks ] period]] [current_design]
	set_max_transition 0.30 [current_design]	;# set_max_transition: 300ps
	set_max_area -ignore_tns 0


	# for large designs with many levels of hierarchy, automatic wire load selection can increase runtime. 
	# In that case, you can choose wire_load_model manually. To see the wire load model you can choose, use the "report_lib" command.
	set auto_wire_load_selection false
	#set_wire_load_model ""
	
	set_dont_touch_network [get_clocks *]
	set_ideal_network [get_clocks *]
	
	set_register_merging [all_designs] false

#------------------------------------------------------------------------------
# Test Multibit Register
#------------------------------------------------------------------------------
  set hdlin_infer_multibit default_all

#------------------------------------------------------------------------------
# Create default path groups: can help improve optimization
#------------------------------------------------------------------------------
	set ports_clock_root [filter_collection [get_attribute [get_clocks] sources] object_class==port]
	group_path -name REGOUT -to [all_outputs]
	group_path -name REGIN -from [remove_from_collection [all_inputs] ${ports_clock_root}]
	group_path -name FEEDTHROUGH -from [remove_from_collection [all_inputs] ${ports_clock_root}] -to [all_outputs]



#------------------------------------------------------------------------------
# Power optimization constraints
#------------------------------------------------------------------------------
	# identify_clock_gating
#	set_clock_gating_style -max_fanout 10000 -minimum_bitwidth 4 \
#						-sequential_cell latch \
#						-positive_edge_logic {integrated:PREICG_X9B_A9TR} \
#						-control_point before 

	set_clock_gating_style -max_fanout 10000 -minimum_bitwidth 24 \
						-sequential_cell latch \
						-control_point before -num_stages 50 
						#-positive_edge_logic {integrated:PREICG_X9B_A9TR} \
						-control_point before -num_stages 50 
	# set power_cg_auto_identify true
	# set power_do_not_size_icg_cells true
	# set power_cg_module_naming_style true
	# set placer_disable_auto_bound_for_gated_clock false

	#set_utilization 0.5


#------------------------------------------------------------------------------
# Check for design errors
#------------------------------------------------------------------------------
	# Prevent assignment statements in the Verilog netlist.
	set_fix_multiple_port_nets -all -buffer_constants -feedthroughs [all_designs]
	
	check_design -summary
	check_design > ${REPORTS_DIR}/${DCRM_CHECK_DESIGN_REPORT}
	
	# Ungroup
	#ungroup -all -start_level 2
	ungroup -all -flatten
    #ungroup -all
	uniquify


#-----------------------------------------------------------------------------
# Compile the design
#-----------------------------------------------------------------------------
	set compile_cmd "compile -gate_clock"
	set_app_var compile_seqmap_enable_output_inversion true
	
#	lappend compile_cmd "-no_autoungroup" 
#	#lappend compile_cmd "-no_seq_output_inversion"
	
	echo $compile_cmd
	eval $compile_cmd
	
	#while { [eval $compile_cmd] == 0 } {
	#	sh sleep 200
	#}
	



#--------------------------------------------------------------------------------
# Calculate the clock period value based upon design wns and critical path length
#--------------------------------------------------------------------------------
	set QOR_RPT ${REPORTS_DIR}/.${DCRM_FINAL_QOR_REPORT}
	report_qor > $QOR_RPT
	
	set clock_root [get_attribute [get_clocks *] sources]
	set crit_path_length 0.0
	set wns 0.0
	set fp_qor [open ${QOR_RPT} r]; set rpt_qor [read $fp_qor]; close $fp_qor

	# Get wns
	foreach line [split $rpt_qor "\n"] { 
		regexp {^\s*Design\s*WNS\s*:\s*(\S+)} $line match wns
	}

	# Get critical path delay
	foreach line [split $rpt_qor "\n"] { 
		regexp {^\s*Critical\s*Path\sLength\s*:\s*(\S+)} $line match crit_path_length
	}

	#create_clock ${CLOCK_PORT} -period [expr 0.5*($crit_path_length + $wns)]
	create_clock ${CLOCK_PORT} -period [expr 1.0*($crit_path_length + $wns)]


	set QOR_RPT ${REPORTS_DIR}/.${DCRM_FINAL_QOR_REPORT}_2
	report_qor > $QOR_RPT

#-----------------------------------------------------------------------------
# Compile again
#-----------------------------------------------------------------------------
	set compile_cmd "compile -incremental_mapping"
	set_app_var compile_seqmap_enable_output_inversion true
	
	echo $compile_cmd
	eval $compile_cmd
#
#	# Give some margin on clock period
	#create_clock ${CLOCK_PORT} -period [expr 2.00*($crit_path_length + $wns)]
	create_clock ${CLOCK_PORT} -period [expr 2.0*($crit_path_length + $wns)]

#--------------------------------------------------------------------------------
# Generate final reports
#--------------------------------------------------------------------------------
	report_qor > ${REPORTS_DIR}/${DCRM_FINAL_QOR_REPORT}
	report_timing -transition_time -nets -attributes -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_TIMING_REPORT}
	report_area -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_AREA_REPORT}
	# read_saif -auto_map_names -input ${DESIGN_NAME}.saif -instance < DESIGN_INSTANCE > -verbose
	report_power -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_POWER_REPORT}
	report_clock_gating -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_CLOCK_GATING_REPORT}
	report_reference -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_REFERENCE_REPORT}


#-----------------------------------------------------------------------------
# Save design
#-----------------------------------------------------------------------------
	#ungroup -all -flatten
	#ungroup -all 
		
	### Flat bus netlist
	define_name_rules verilog -remove_port_bus -remove_internal_net_bus
	change_names -rules verilog -hierarchy

	### FF Names
#	set prefix "FF_SYNTH"
#	foreach_in_collection reg [all_registers] {
#		set reg_name [get_attr $reg name]
#		change_names -instance [get_cells $reg_name] -new_name ${prefix}_${reg_name}
#	}

	#write -format ddc     -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_DDC_OUTPUT_FILE}
	write -format verilog -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_VERILOG_OUTPUT_FILE}
	write_sdc -nosplit ${RESULTS_DIR}/${DCRM_FINAL_SDC_OUTPUT_FILE}
	write -format verilog -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_VERILOG_OUTPUT_FILE_FLAT_BUS}
	write_sdc -nosplit ${RESULTS_DIR}/${DCRM_FINAL_SDC_OUTPUT_FILE_FLAT_BUS}

    report_net -nosplit > ${REPORTS_DIR}/${DCRM_FINAL_NET_REPORT}
#exit
