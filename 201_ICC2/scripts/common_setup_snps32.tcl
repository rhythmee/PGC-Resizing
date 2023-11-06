puts "RM-Info: Running script [info script]\n"

##########################################################################################
# Variables common to all RM scripts
# Script: common_setup.tcl
# Version: F-2011.09-SP4 (April 2, 2012)
# Copyright (C) 2007-2012 Synopsys, Inc. All rights reserved.
##########################################################################################

#set DESIGN_NAME                   "fpu"  ;#  The name of the top-level design

set rm_design ${DESIGN}
#source ../scripts/benchmarks_rev/rm_rtl_path.tcl
#source ${ROOT_DIR}/benchmarks_rev/rm_rtl_path.tcl
source ${SETUP_DIR}/rm_rtl_path.tcl
# I can't find it
set DESIGN_NAME                   ${rm_design_name}  ;#  The name of the top-level design

set REPORTS_DIR                 "reports"     ;# Directory to write reports.
set RESULTS_DIR                 "results"     ;# Directory to write output data files
set SOURCE_DIR 			        $RESULTS_DIR  ;# Source directory for analysis tasks such as FM and MVRC

if { ! [file exists $RESULTS_DIR] } { file mkdir $RESULTS_DIR }
if { ! [file exists $REPORTS_DIR] } { file mkdir $REPORTS_DIR }

## Point to the new 14nm SAED libs
#set DESIGN_REF_PATH "/remote/exchange/synopsys/SAED14_EDK"
#set DESIGN_REF_PATH		  "/SCRATCH/development/SAED14_EDK"
#set DESIGN_REF_PATH		  "/home/sam28/synopsys_pdk/SAED14_EDK"
set DESIGN_REF_PATH		  "${PDK_DIR}"

set DESIGN_REF_TECH_PATH          "${DESIGN_REF_PATH}/SAED32_EDK/tech"

#set DESIGN_REF_DATA_PATH          ""  ;#  Absolute path prefix variable for library/design data.
                                       #  Use this variable to prefix the common absolute path to 
                                       #  the common variables defined below.
                                       #  Absolute paths are mandatory for hierarchical RM flow.

##########################################################################################
# Hierarchical Flow Design Variables
##########################################################################################

set HIERARCHICAL_DESIGNS           "" ;# List of hierarchical block design names "DesignA DesignB" ...
set HIERARCHICAL_CELLS             "" ;# List of hierarchical block cell instance names "u_DesignA u_DesignB" ...

##########################################################################################
# Library Setup Variables
##########################################################################################

# For the following variables, use a blank space to separate multiple entries
# Example: set TARGET_LIBRARY_FILES "lib1.db lib2.db lib3.db"

set ADDITIONAL_SEARCH_PATH      " \
        ${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/db_nldm \
        ${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_hvt/db_nldm \
        ${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_lvt/db_nldm \
	    ${DESIGN_REF_PATH}/SAED32_EDK/lib/io_std/db_nldm "


set LINK_LIBRARY_FILES   "* \
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_dlvl_ss0p75v125c_i0p75v.db
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_dlvl_ss0p7v125c_i0p7v.db
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_pg_ss0p75v125c.db
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p75v125c.db
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ulvl_ss0p75v125c_i0p75v.db "



set TARGET_LIBRARY_FILES   " \
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_dlvl_ss0p75v125c_i0p75v.db
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_dlvl_ss0p7v125c_i0p7v.db
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_pg_ss0p75v125c.db
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p75v125c.db
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ulvl_ss0p75v125c_i0p75v.db "



set NDM_REFERENCE_LIB_DIRS  " \
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/ndm/saed32rvt_c.ndm \
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/ndm/saed32rvt_dlvl_v.ndm \
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/ndm/saed32rvt_pg_c.ndm \
${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/ndm/saed32rvt_ulvl_v.ndm \
"

set MW_REFERENCE_CONTROL_FILE     ""  ;#  Reference Control file to define the MW ref libs

#set TECH_FILE                     "${DESIGN_REF_PATH}/tech/milkyway/saed14nm_1p9m_mw.tf"  ;#  Milkyway technology file
#set TECH_FILE                     "/SCRATCH/labs/Low_Power_Methodology_Manual_for_3228nm/saed14rvt_1p9m.tf"
set TECH_FILE                     "${DESIGN_REF_TECH_PATH}/milkyway/saed32nm_1p9m_mw.tf"  ;# snps32 
#set MAP_FILE                      "${DESIGN_REF_PATH}/tech/star_rc/saed14nm_tf_itf_tluplus.map"  ;#  Mapping file for TLUplus
set MAP_FILE                      "${DESIGN_REF_TECH_PATH}/star_rcxt/saed32nm_tf_itf_tluplus.map" ;#snps32
#set TLUPLUS_MAX_FILE              "${DESIGN_REF_PATH}/tech/star_rc/max/saed14nm_1p9m_Cmax.tluplus"  ;#  Max TLUplus file
set TLUPLUS_MAX_FILE              "${DESIGN_REF_TECH_PATH}/star_rcxt/saed32nm_1p9m_Cmax.tluplus" ;#snps32
#set TLUPLUS_MIN_FILE              "${DESIGN_REF_PATH}/tech/star_rc/min/saed14nm_1p9m_Cmin.tluplus"  ;#  Min TLUplus file
set TLUPLUS_MIN_FILE              "${DESIGN_REF_TECH_PATH}/star_rcxt/saed32nm_1p9m_Cmin.tluplus" ;#snps32
#set GDS_MAP_FILE          	  "${DESIGN_REF_PATH}/tech/milkyway/saed14nm_1p9m_gdsout_mw.map"
set GDS_MAP_FILE                  "${DESIGN_REF_TECH_PATH}/milkyway/saed32nm_1p9m_gdsout_mw.map" ;#snps32
#set STD_CELL_GDS		  "${DESIGN_REF_PATH}/lib/stdcell_rvt/gds/saed14rvt.gds"
set STD_CELL_GDS                  "${DESIGN_REF_PATH}/SAED32_EDK/lib/stdcell_rvt/gds/saed32nm_rvt_oa.gds" ;#snps32
##set SRAMLP_SINGLELP_GDS		  "${DESIGN_REF_PATH}/lib/sram_lp/gds/singlelp.gds"
#set SRAMLP_SINGLELP_GDS           "${DESIGN_REF_TECH_PATH}/ " ;#snps32

set NDM_POWER_NET                "VDD" ;#
set NDM_POWER_PORT               "VDD" ;#
set NDM_GROUND_NET               "VSS" ;#
set NDM_GROUND_PORT              "VSS" ;#

set MIN_ROUTING_LAYER            "M2"   ;# Min routing layer
#set MIN_ROUTING_LAYER            "M1"   ;# Min routing layer
#set MAX_ROUTING_LAYER            "M8"   ;# Max routing layer
#set MAX_ROUTING_LAYER            "M6"   ;# Max routing layer
#set MAX_ROUTING_LAYER            "M5"   ;# Max routing layer
set MAX_ROUTING_LAYER            "M4"   ;# Max routing layer

##RH variable for ICC SAED library and design input data
#set ICC_INPUT_DATA "/global/scratch/mculver/PD_fest_2012/initial_design/dhm"

#set LIBRARY_DONT_USE_FILE        "../../DATA_SAED/use_tie.tcl"   ;# Tcl file with library modifications for dont_use

##########################################################################################
# Multi-Voltage Common Variables
#
# Define the following MV common variables for the RM scripts for multi-voltage flows.
# Use as few or as many of the following definitions as needed by your design.
##########################################################################################

set PD1                          ""           ;# Name of power domain/voltage area  1
set PD1_CELLS                    ""           ;# Instances to include in power domain/voltage area 1
set VA1_COORDINATES              {}           ;# Coordinates for voltage area 1
set NDM_POWER_NET1                "VDD1"       ;# Power net for voltage area 1
set NDM_POWER_PORT1               "VDD"        ;# Power port for voltage area 1

set PD2                          ""           ;# Name of power domain/voltage area  2
set PD2_CELLS                    ""           ;# Instances to include in power domain/voltage area 2
set VA2_COORDINATES              {}           ;# Coordinates for voltage area 2
set NDM_POWER_NET2                "VDD2"       ;# Power net for voltage area 2
set NDM_POWER_PORT2               "VDD"        ;# Power port for voltage area 2

set PD3                          ""           ;# Name of power domain/voltage area  3
set PD3_CELLS                    ""           ;# Instances to include in power domain/voltage area 3
set VA3_COORDINATES              {}           ;# Coordinates for voltage area 3
set NDM_POWER_NET3                "VDD3"       ;# Power net for voltage area 3
set NDM_POWER_PORT3               "VDD"        ;# Power port for voltage area 3

set PD4                          ""           ;# Name of power domain/voltage area  4
set PD4_CELLS                    ""           ;# Instances to include in power domain/voltage area 4
set VA4_COORDINATES              {}           ;# Coordinates for voltage area 4
set NDM_POWER_NET4                "VDD4"       ;# Power net for voltage area 4
set NDM_POWER_PORT4               "VDD"        ;# Power port for voltage area 4

puts "RM-Info: Completed script [info script]\n"

