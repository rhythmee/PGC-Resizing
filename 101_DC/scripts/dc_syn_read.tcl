#------------------------------------------------------------------------------
# Author: Jinwook Jung
# Last Modified: 2016-12-22
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Read design
#------------------------------------------------------------------------------
	define_design_lib WORK -path ./WORK
	
	read_verilog ${RESULTS_DIR}/${DCRM_FINAL_VERILOG_OUTPUT_FILE}

	current_design ${DESIGN_NAME}

	link
#exit
