#!/bin/bash

ROOT_DIR=`pwd`
ICC_ROOT=$ROOT_DIR/201_ICC2
REDHAWK_ROOT=${ROOT_DIR}/300_redhawk
MAP_DIR=${ROOT_DIR}/400_ML/1_maps
script_dir=${ROOT_DIR}/400_ML/1_maps/scripts

LIST_DESIGN=`cat ${ROOT_DIR}/400_ML/list_design`
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
        #VER_NAME=${DESIGN}_${CORE_UTIL}_${AR}_${PITCH_CPP}_${PREFIX}
        VER_NAME=${DESIGN}_${CORE_UTIL}_${MAX_UTIL};
        POSTFIX="pitch_6.0"

        RESULTS_DIR=${MAP_DIR}/input_maps/${VER_NAME};

        if [ ! -d "$RESULTS_DIR" ]; then
            mkdir -p $RESULTS_DIR; 
        fi


#        cd $RESULTS_DIR

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

        stamp_begin=`date +%s`;

        arg1=${ICC_ROOT}/designs/${VER_NAME}_${POSTFIX}/results/${VER_NAME}/congestion_cts_pdn.txt
        arg2=${REDHAWK_ROOT}/designs/${VER_NAME}/list_instance.txt

        python ${script_dir}/gen_feature_map.py $arg1 $arg2

        stamp_end=`date +%s`;
        ((RUNTIME += stamp_end - stamp_begin));
    done
done

echo ""
echo "RUNTIME: ${RUNTIME} seconds"
echo ""
