

set opensparc "../../opensparc"
#set opensparc "../../../oracle"
set iop "$opensparc/design/sys/iop"

set rtl_path {}
set rtl_path "$rtl_path $iop/fpu/rtl"
set rtl_path "$rtl_path $iop/common/rtl"
set rtl_path "$rtl_path $iop/pr_macro/rtl"
set rtl_path "$rtl_path $iop/srams/rtl"


set_app_var search_path "$search_path $iop/include $rtl_path "


set std_cell_lib 	  "saed14rvt_tt0p8v25c.db \
			   saed14rvt_ss0p72v125c.db \
			   saed14rvt_ss0p6v125c.db "

set link_library  $std_cell_lib
set target_library $std_cell_lib


analyze -f verilog [glob $opensparc/lib/m1/*]
analyze -f verilog [glob $opensparc/lib/u1/*]

foreach path $rtl_path { 
    analyze -f verilog [glob $path/*.v] 
}

elaborate fpu

source ../scripts/fpu.sdc
compile -exact_map

report_timing > ../results/fpu.timing_report

change_names -rules verilog
write -hierarchy -format verilog -output ../results/fpu.gate.v



