#!/bin/bash

ROOT_DIR=`pwd`
ICC_ROOT=$ROOT_DIR/201_ICC2
RTL_SETUP=$ROOT_DIR/000_SETUP/rm_rtl_path.tcl
REDHAWK_ROOT=${ROOT_DIR}/300_redhawk
script_dir=${REDHAWK_ROOT}/scripts

LIST_DESIGN=`cat ${REDHAWK_ROOT}/list_design`
#LIST_CORE_UTIL=("0.60" "0.65" "0.70" "0.75")
LIST_CORE_UTIL=("0.60")

RUNTIME=0


for CORE_UTIL in "${LIST_CORE_UTIL[@]}"
#for CORE_UTIL in ${LIST_CORE_UTIL}
do
    FLAG=0
    for DESIGN in $LIST_DESIGN
    do
        if [ $FLAG -eq 0 ]; then
            if [ "$DESIGN" == '__START__' ]; then 
                 FLAG=1 
                 continue
            else continue
            fi
        fi

        if [ "$DESIGN" == '__END__' ]; then
            break
        fi

        MAX_UTIL=0.90
        TOGGLE_RATE=10.0
        #VER_NAME=${DESIGN}_${CORE_UTIL}_${AR}_${PITCH_CPP}_${PREFIX}
        VER_NAME=${DESIGN}_${CORE_UTIL}_${MAX_UTIL};
        POSTFIX="pitch_6.0"

        RESULTS_DIR=${REDHAWK_ROOT}/designs/${VER_NAME};

        if [ ! -d "$RESULTS_DIR" ]; then
            mkdir -p $RESULTS_DIR; 
        fi

        cp ${script_dir}/static.gsr ${RESULTS_DIR}/static_${DESIGN}.gsr

        sed -i "s/DESIGN/${DESIGN}/g" ${RESULTS_DIR}/static_${DESIGN}.gsr
        sed -i "s/VER/${VER_NAME}/g" ${RESULTS_DIR}/static_${DESIGN}.gsr
        sed -i "s/PFX/${POSTFIX}/g" ${RESULTS_DIR}/static_${DESIGN}.gsr
        sed -i "s/ROOT_DIR/${ROOT_DIR//\//\\/}/g" ${RESULTS_DIR}/static_${DESIGN}.gsr
        sed -i "s/ICC_ROOT/${ICC_ROOT//\//\\/}/g" ${RESULTS_DIR}/static_${DESIGN}.gsr

        cd $RESULTS_DIR

        export ROOT_DIR
        export REDHAWK_ROOT
        export ICC_ROOT
        export RESULTS_DIR
        export DESIGN
        export RTL_SETUP
        export CORE_UTIL
        export MAX_UTIL
        #export PITCH_CPP
        export POSTFIX
        export VER_NAME
        export TOGGLE_RATE

        stamp_begin=`date +%s`;

        redhawk -b ${REDHAWK_ROOT}/scripts/run_redhawk.tcl

        stamp_end=`date +%s`;
        ((RUNTIME += stamp_end - stamp_begin));
    done
done

echo ""
echo "RUNTIME: ${RUNTIME} seconds"
echo ""
