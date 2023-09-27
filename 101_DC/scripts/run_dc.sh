
#!/bin/bash
#ROOT_DIR=`cd ../; pwd`
ROOT_DIR=`pwd`


DC_ROOT=${ROOT_DIR}/100_DC


#TECH_LIB="$ROOT_DIR/000_SETUP/tech_sam_28nm.tcl"
RTL_SETUP="$ROOT_DIR/benchmarks_rev/rm_rtl_path.tcl"
LIST_DESIGN=`cat ${DC_ROOT}/list_design`

FLAG=0
RUNTIME=0

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

	#DIR=${DC_ROOT}/${DESIGN}_1.5
	#DIR=${DC_ROOT}/${DESIGN}
	DIR=${DC_ROOT}/${DESIGN}
	if [ -d "$DIR" ]
	then
		echo "$DIR exists!!"
		continue
	fi

	mkdir $DIR; cd $DIR

	stamp_begin=`date +%s`;
	dc_shell -x "
		set ROOT_DIR $ROOT_DIR;
#		set rm_tech $TECH_LIB;
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
