#-----------------------------------------------------------------------------------------
# common_setup.tcl
# Description: Variables common to all reference methodology scripts / RM: H-2013.03 (April 15, 2013)
# Last Modified: 2016-05-26
# Author: Jinwook Jung
#-----------------------------------------------------------------------------------------
puts "Info: Running script [info script]\n"
set current_directory [pwd]

#-----------------------------------------------------------------------------------------
# Application Variables
#-----------------------------------------------------------------------------------------
set_app_var sh_continue_on_error false
set_app_var sh_script_stop_severity none	;# This variable can be set to none, W(arning), and E(rror)
set_app_var sh_enable_page_mode true

# The following setting removes new variable info messages from the end of the log file
set_app_var sh_new_variable_message false

set report_default_significant_digits 5

#-----------------------------------------------------------------------------------------
# Technology and Design Information
#-----------------------------------------------------------------------------------------
# Technology setup file
#	Target library
#	MW reference library
#	tf2itf map file
#	Max/Min tluplus file
#	Operation condition
source $rm_tech

# Benchmark RTL path setup file
source $rm_rtl_setup

set DESIGN_NAME 				${rm_design_name}  ;#  The name of the top-level design
set DESIGN_REF_DATA_PATH  		""  ;#  Absolute path prefix variable for library/design data.
									;#  Use this variable to prefix the common absolute path  
									;#  to the common variables defined below.
									;#  Absolute paths are mandatory for hierarchical 
									;#  reference methodology flow.

#-----------------------------------------------------------------------------------------
# Hierarchical Flow Design Variables
#-----------------------------------------------------------------------------------------
set HIERARCHICAL_DESIGNS 		"" 	;# List of hierarchical block design names "DesignA DesignB" ...
set HIERARCHICAL_CELLS 			"" 	;# List of hierarchical block cell instance names "u_DesignA u_DesignB" ...

#-----------------------------------------------------------------------------------------
# Library Setup Variables
#-----------------------------------------------------------------------------------------
# For the following variables, use a blank space to separate multiple entries.
# Example: set TARGET_LIBRARY_FILES "lib1.db lib2.db lib3.db"
#  Additional search path to be added to the default search path
set ADDITIONAL_SEARCH_PATH 		". ${rm_rtl_path} ${rm_additional_search_path}"
#set ADDITIONAL_SEARCH_PATH 		". ${rm_rtl_path}"
set TARGET_LIBRARY_FILES 		"${rm_target_library}" ;#  Target technology logical libraries
set ADDITIONAL_LINK_LIB_FILES 	"/home/sam28/sunwha/LOW_ASPECT/100_DC/MEMORY_DB/memory_library.db" ;#  Extra link logical libraries not included in TARGET_LIBRARY_FILES
set MIN_LIBRARY_FILES 			"" ;#  List of max min library pairs "max1 min1 max2 min2 max3 min3"...
set MW_REFERENCE_LIB_DIRS 		"${rm_mw_reference_lib_dirs}" ;#  Milkyway reference libraries (include IC Compiler ILMs here)
set MW_REFERENCE_CONTROL_FILE 	"" ;#  Reference Control file to define the Milkyway reference libs
                                 
set TECH_FILE 					"${rm_tech_file}" ;#  Milkyway technology file
set MAP_FILE 					"${rm_tf2itf_map_file}"  ;#  Mapping file for TLUplus
set TLUPLUS_MAX_FILE 			"${rm_max_tluplus_file}" ;#  Max TLUplus file
set TLUPLUS_MIN_FILE 			"${rm_min_tluplus_file}" ;#  Min TLUplus file
#set TLUPLUS_TYP_FILE 			"${rm_typ_tluplus_file}" ;#  Min TLUplus file

set MIN_ROUTING_LAYER 			"M2" ;# Min routing layer
set MAX_ROUTING_LAYER 			"M6" ;# Max routing layer

set LIBRARY_DONT_USE_FILE 		"" ;# Tcl file with library modifications for dont_use

#-----------------------------------------------------------------------------------------
# Multivoltage Common Variables
# Define the following multivoltage common variables for the reference methodology scripts 
# for multivoltage flows. 
# Use as few or as many of the following definitions as needed by your design.
#-----------------------------------------------------------------------------------------
set PD1 						"" 		;# Name of power domain/voltage area  1
set VA1_COORDINATES 			{} 		;# Coordinates for voltage area 1
set MW_POWER_NET1 				"VDD1" 	;# Power net for voltage area 1

set PD2 						"" 		;# Name of power domain/voltage area  2
set VA2_COORDINATES 			{} 		;# Coordinates for voltage area 2
set MW_POWER_NET2 				"VDD2" 	;# Power net for voltage area 2

set PD3 						"" 		;# Name of power domain/voltage area  3
set VA3_COORDINATES 			{} 		;# Coordinates for voltage area 3
set MW_POWER_NET3 				"VDD3" 	;# Power net for voltage area 3

set PD4 						"" 		;# Name of power domain/voltage area  4
set VA4_COORDINATES 			{} 		;# Coordinates for voltage area 4
set MW_POWER_NET4 				"VDD4"	;# Power net for voltage area 4

