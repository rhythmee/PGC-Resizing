
#!/bin/bash
ROOT_DIR=`pwd`

DC_ROOT=${ROOT_DIR}

#TECH_LIB="$ROOT_DIR/000_SETUP/tech_sam_28nm.tcl"
RTL_SETUP="$ROOT_DIR/scripts/benchmarks_rev/rm_rtl_path.tcl"
LIST_DESIGN=`cat list_design` 

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

	DIR=${DC_ROOT}/${DESIGN}
	cd $DIR

	stamp_begin=`date +%s`;
	dc_shell -x "
		set ROOT_DIR $ROOT_DIR;
#		set rm_tech $TECH_LIB;
		set rm_design $DESIGN;
		set rm_rtl_setup $RTL_SETUP;
		echo [date]; 
		source -e -v ../scripts/dc_read.tcl;
		" 
	stamp_end=`date +%s`;
	((RUNTIME += stamp_end - stamp_begin));
done

echo ""
echo "Runtime: ${RUNTIME} seconds"
echo ""
