#!/bin/bash
ROOT_DIR=`pwd` 
SETUP_DIR=${ROOT_DIR}/000_SETUP
DC_ROOT=${ROOT_DIR}/101_DC
PDK_DIR=/home/hot_data/DB/snps14

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
       
    DIR=${DC_ROOT}/designs/${DESIGN};
    mkdir -p $DIR
    cd $DIR; #Starting directory of DC Compiler
       
    stamp_begin=`date +%s`;
        
    dc_shell -x "
    set ROOT_DIR $DC_ROOT;
    #set rm_tech $TECH_LIB;
    set LIB_PATH $PDK_DIR;
    set rm_design $DESIGN;
    set rm_rtl_setup $RTL_SETUP;
    echo [date]; 
    source -e -v ${DC_ROOT}/scripts/dc.tcl;
    " 
        
    stamp_end=`date +%s`;
    ((RUNTIME += stamp_end - stamp_begin));
done

echo ""
echo "Runtime: ${RUNTIME} seconds"
echo ""
