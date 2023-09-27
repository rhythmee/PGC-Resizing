#!/usr/bin/tclsh

#-----------------------------------------------------------------------------------------
# dc_setup.tcl 
# Description: DCRM setup for top-down flow / RM Version: H-2013.03 (April 15, 2013)
# Last Modified: 2016/05/26
# Author: Jinwook Jung
#-----------------------------------------------------------------------------------------

#source /home/sam28/sunwha/LOW_ASPECT/000_SETUP/common_setup.tcl
#source /home/sam28/sunwha/LOW_ASPECT/000_SETUP/dc_setup_filenames.tcl
#set curr_path  /home/sam28/ygjung/decap_insertion/dc/scripts

source ${ROOT_DIR}/scripts/common_setup_14nm.tcl
source ${ROOT_DIR}/scripts/dc_setup_filenames.tcl
puts "Info: Running script [info script]\n"

# /* Setup Variables */
if {$synopsys_program_name == "dc_shell"} {
	set DC_NUM_CORES 2
	set_host_options -max_cores $DC_NUM_CORES
	
	# Change alib_library_analysis_path to point to a central cache of analyzed libraries
	# to save runtime and disk space.  The following setting only reflects the
	# default value and should be changed to a central location for best results.
	#set_app_var alib_library_analysis_path "/home/sam28/sunwha/CTS_PWR/200_ICC/synopsys_env/.synopsys_cache/alib" 
	#set_app_var alib_library_analysis_path "/home/sam28/ygjung/decap_insertion/icc2/synopsys_env/.synopsys_cache/alib" 

	# Add any additional Design Compiler variables needed here
	#set_app_var ...
}

# Enter the list of source RTL files if reading from RTL
set RTL_SOURCE_FILES ${rm_rtl_src}

# the location of the output files.
set REPORTS_DIR [format %s%s $CURRENT_DIR "/reports"]
set RESULTS_DIR [format %s%s $CURRENT_DIR "/results"]

file mkdir ${REPORTS_DIR}
file mkdir ${RESULTS_DIR}


# Search path and libraries
set_app_var search_path ". ${ADDITIONAL_SEARCH_PATH} $search_path"
set mw_reference_library ${MW_REFERENCE_LIB_DIRS}
set mw_design_library ${DCRM_MW_LIBRARY_NAME}
set mw_site_name_mapping { {CORE unit} {Core unit} {core unit} }

# The remainder of the setup below should only be performed in Design Compiler
if {$synopsys_program_name == "dc_shell"}  {

	set_app_var target_library ${TARGET_LIBRARY_FILES}
	set_app_var synthetic_library "dw_foundation.sldb"
	#set_app_var link_library "* $target_library $ADDITIONAL_LINK_LIB_FILES $synthetic_library"
	set_app_var link_library "* $target_library $LINK_LIBRARY_FILES $synthetic_library"

	# Set min libraries if they exist
#	foreach {max_library min_library} $MIN_LIBRARY_FILES {
#		set_min_library $max_library -min_version $min_library
#	}
}

puts "Info: Completed script [info script]\n"
