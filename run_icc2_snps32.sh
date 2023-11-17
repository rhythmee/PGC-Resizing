#!/bin/bash
#ROOT_DIR=`cd ..; pwd`
export ROOT_DIR=`pwd` # result of pwd command.
#export SETUP_DIR=${ROOT_DIR}/000_SETUP
export SETUP_DIR=/home/ischo/PGC-Resizing/000_SETUP
export DC_ROOT=${ROOT_DIR}/101_DC
export ICC_ROOT=${ROOT_DIR}/201_ICC2

#export PDK_DIR=/home/hot_data/DB/snps14
export PDK_DIR=/home/hot_data/DB/snps32

RUNTIME=0
FLAT_BUS=1

AR=`cat ${ICC_ROOT}/list_ar` 
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
            #DIR=${ICC_ROOT}/designs/${DESIGN}_${UF}_${AR}_pg_M567_pad_${PAD_PARAM}_cpp_${CPP_NUM}_util_${MAX_UTIL};
            DIR=${ICC_ROOT}/designs_32nm/${DESIGN}_${UF}_${MAX_UTIL}_${AR}_pg_M567_pad_${PAD_PARAM}_cpp_${CPP_NUM}_track_pattern;
            mkdir -p $DIR
            cd $DIR; #Starting directory of IC Compiler

            stamp_begin=`date +%s`;
            icc2_shell -x " 
            set ROOT_DIR ${ROOT_DIR};
            set ICC_DIR ${ICC_ROOT};
            set DC_DIR ${DC_ROOT};
            set SETUP_DIR ${SETUP_DIR};
            set PDK_DIR ${PDK_DIR};
            #set rm_tech $TECH_LIB;
            #set rm_design $DESIGN; 
            set DESIGN $DESIGN; 
            set design_dir ${DESIGN};
            #set rm_rtl_setup $RTL_SETUP;
            set tr_time 0.15
            set skew_time 0.3
            set tr_leaf 0.15
            set UF $UF
			set AR $AR
#                           set PLACE_EFFORT "medium";
            set CPP_NUM $CPP_NUM
            set PAD_PARAM $PAD_PARAM;
            set MAX_UTIL ${MAX_UTIL};
            set ver_name ${VER_NAME};
            echo [date]; 

            source -e -v ${ICC_ROOT}/scripts/physical_snps32.tcl;
            #source -e -v ${ICC_ROOT}/scripts/physical_snps32_local_sizing.tcl;
            "
            stamp_end=`date +%s`;
            ((RUNTIME += stamp_end - stamp_begin));

        done
done

echo ""
echo "Runtime: ${RUNTIME} seconds"
echo ""
