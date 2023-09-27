#!/bin/bash
#ROOT_DIR=`cd ..; pwd`
export ROOT_DIR=`pwd` 
export SETUP_DIR=${ROOT_DIR}/000_SETUP
export DC_ROOT=${ROOT_DIR}/101_DC
export ICC_ROOT=${ROOT_DIR}/201_ICC2
export PDK_DIR=/home/hot_data/DB/snps14 #wappinger server

RUNTIME=0
FLAT_BUS=1

LIST_UF=`cat ${ICC_ROOT}/list_uf`
for UF in $LIST_UF
do
    FLAG=0
    LIST_DESIGN=`cat ${ICC_ROOT}/list_design` 
        for DESIGN in $LIST_DESIGN 
        do
            if [ $FLAG -eq 0 ]; then
                if [ "$DESIGN" == '__START__' ]; then 
                    FLAG=1 
                    continue
                    else continue;
                fi		
            fi
               
            if [ "$DESIGN" == '__END__' ]; then break; fi
               
            CPP_NUM=200
            PAD_PARAM=10
            MAX_UTIL=0.90
            VER_NAME=${DESIGN}_${UF}_${MAX_UTIL};
            DIR=${ICC_ROOT}/designs/${DESIGN}_${UF}_${MAX_UTIL}_pitch_6.0;
            mkdir -p $DIR
            cd $DIR; #Starting directory of ICC2

            stamp_begin=`date +%s`;
            icc2_shell -x " 
            set ROOT_DIR ${ROOT_DIR};
            set ICC_DIR ${ICC_ROOT};
            set DC_DIR ${DC_ROOT};
            set SETUP_DIR ${SETUP_DIR};
            set PDK_DIR ${PDK_DIR};
            set DESIGN $DESIGN; 
            set design_dir ${DESIGN};
            set tr_time 0.15
            set skew_time 0.3
            set tr_leaf 0.15
            set UF $UF
            set CPP_NUM $CPP_NUM
            set PAD_PARAM $PAD_PARAM;
            set MAX_UTIL ${MAX_UTIL};
            set ver_name ${VER_NAME};
            echo [date]; 
            source -e -v ${ICC_ROOT}/scripts/physical_design.tcl;
            "
            stamp_end=`date +%s`;
            ((RUNTIME += stamp_end - stamp_begin));
        done
done


echo ""
echo "Runtime: ${RUNTIME} seconds"
echo ""
