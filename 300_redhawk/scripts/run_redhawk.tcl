puts "Running redhawk_run.tcl..."

# load environment variables
set ROOT_DIR        $::env(ROOT_DIR);
set REDHAWK_ROOT    $::env(REDHAWK_ROOT);
set ICC_ROOT        $::env(ICC_ROOT);
set DESIGN_DIR      $::env(RESULTS_DIR)
set rm_design       $::env(DESIGN);
set rm_rtl_setup    $::env(RTL_SETUP);
set CORE_UTIL       $::env(CORE_UTIL);
#set PITCH_CPP       $::env(PITCH_CPP);
set POSTFIX          $::env(POSTFIX);
set VER_NAME        $::env(VER_NAME);
set TOGGLE_RATE     $::env(TOGGLE_RATE)


# set top_name of design
source $rm_rtl_setup

setup analysis_mode static

#import gsr ${REDHAWK_ROOT}/scripts/static.gsr
import gsr ${DESIGN_DIR}/static_${rm_design}.gsr

#set MW_CEL_NAME CPP_${PITCH_CPP}



# get clock period
set SDC_FILE    ${ICC_ROOT}/designs/${VER_NAME}_${POSTFIX}/results/${VER_NAME}/${rm_design}.sdc
set fp_sdc      [open ${SDC_FILE} r]; set sdc [read $fp_sdc]; close $fp_sdc

foreach line [split $sdc "\n"] {
    regexp {^\s*create_clock\s+.*-period\s*(\S+)} $line match period
}

set frequency_val [expr 1 / ${period}]
set FREQUENCY   "${frequency_val}G"

set SPEF_FILE   ${ICC_ROOT}/designs/${VER_NAME}_${POSTFIX}/results/${VER_NAME}/${rm_design}.tlup_max_125.spef

# update gsr file variables
gsr set FREQUENCY ${FREQUENCY}
gsr set CELL_RC_FILES [list [list CONDITION worst] [list $rm_design_name $SPEF_FILE] ] 
gsr set TOGGLE_RATE ${TOGGLE_RATE}

setup design
perform pwrcalc ;#power calculation

perform extraction -power -ground ;#power grid resistance extraction (for static analysis)

setup pad -power -r 0.001000 -c 0.000000 
setup pad -ground -r 0.001000 -c 0.000000

perform analysis -static ;#static IR-drop analysis

source ${REDHAWK_ROOT}/scripts/extract_instance.tcl

export db ./static.results

perform emcheck -mode all -net VDD

export db ./em.results
