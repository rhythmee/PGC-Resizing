#!/bin/bash
#ROOT_DIR=`cd ..; pwd`
ROOT_DIR=`pwd` # result of pwd command.
#SETUP_DIR=${ROOT_DIR}/000_SETUP #deleted
SETUP_DIR=/home/ischo/PGC-Resizing/000_SETUP
DC_ROOT=${ROOT_DIR}/101_DC
ICC_ROOT=${ROOT_DIR}/201_ICC2
PDK_DIR=/home/hot_data/DB/snps32

#TECH_LIB="$ROOT_DIR/000_SETUP/tech_sam_28nm.tcl"
RTL_SETUP="$ROOT_DIR/000_SETUP/rm_rtl_path.tcl"

RUNTIME=0
FLAT_BUS=1

FLAG=0
LIST_DESIGN=`cat ${DC_ROOT}/list_design`
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

    DIR=${DC_ROOT}/designs/${DESIGN}_snps32;
    mkdir -p $DIR
    cd $DIR; #Starting directory of Design Compiler
       
#							if [ $FLAT_BUS == 1 ]; then
#								ln -sf ${DC_ROOT}/designs/${DESIGN}/results/*.mapped.flat_bus.v
#								ln -sf ${DC_ROOT}/designs/${DESIGN}/results/*.mapped.flat_bus.sdc
#								else
#								ln -sf ${DC_ROOT}/designs/${DESIGN}/results/*.mapped.v
#								ln -sf ${DC_ROOT}/designs/${DESIGN}/results/*.mapped.sdc
#							fi
    stamp_begin=`date +%s`;
        
    dc_shell -x "
    set ROOT_DIR $DC_ROOT;
    set ICC_DIR ${ICC_ROOT};
    set DC_DIR ${DC_ROOT};
    set SETUP_DIR ${SETUP_DIR};
    set PDK_DIR ${PDK_DIR};
    #set rm_tech $TECH_LIB;
    set LIB_PATH $PDK_DIR;
    set DESIGN $DESIGN;
    set rm_design $DESIGN;
    set rm_rtl_setup $RTL_SETUP;
    echo [date]; 
    source -e -v ${DC_ROOT}/scripts/dc_snps32.tcl;
    " | tee dc.log
        
    stamp_end=`date +%s`;
    ((RUNTIME += stamp_end - stamp_begin));
done

echo ""
echo "Runtime: ${RUNTIME} seconds"
echo ""
