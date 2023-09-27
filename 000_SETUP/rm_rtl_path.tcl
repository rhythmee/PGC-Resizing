#!/usr/bin/tclsh

#------------------------------------------------------------------------------------------
# rm_rtl_path.tcl
# RTL path setup for Synopsys Reference Methodologies
# Author:	Jinwook Jung, Wachirawit Ponghiran
# Last modified:	2016/05/26
#------------------------------------------------------------------------------------------

set bench_root "/home/wonjae/benchmarks"


if     { [string equal $rm_design "c17"] }     {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c432"] }    {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c499"] }    {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c880"] }    {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c880a"] }   {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c880g"] }   {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c1355"] }   {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c1908"] }   {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c1908a"] }  {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c1908a"] }  {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c2670"] }   {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c2670a"] }  {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c3540"] }   {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c3540a"] }  {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c5315"] }   {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c5315a"] }  {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c6288"] }   {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "c7552"] }   {  set rm_rtl_path "${bench_root}/iscas85"; set CLOCK_PORT ""; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "${rm_design}.v" } \
elseif { [string equal $rm_design "s1196"] }   {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s1196.v" } \
elseif { [string equal $rm_design "s1238"] }   {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s1238.v" } \
elseif { [string equal $rm_design "s13207"] }  {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s13207.v" } \
elseif { [string equal $rm_design "s1423"] }   {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s1423.v" } \
elseif { [string equal $rm_design "s1488"] }   {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s1488.v" } \
elseif { [string equal $rm_design "s1494"] }   {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s1494.v" } \
elseif { [string equal $rm_design "s15850"] }  {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s15850.v" } \
elseif { [string equal $rm_design "s208_1"] }  {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s208_1.v" } \
elseif { [string equal $rm_design "s27"] }     {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s27.v" } \
elseif { [string equal $rm_design "s298"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s298.v" } \
elseif { [string equal $rm_design "s344"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s344.v" } \
elseif { [string equal $rm_design "s349"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s349.v" } \
elseif { [string equal $rm_design "s35932"] }  {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s35932.v" } \
elseif { [string equal $rm_design "s382"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s382.v" } \
elseif { [string equal $rm_design "s38584"] }  {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s38584.v" } \
elseif { [string equal $rm_design "s386"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s386.v" } \
elseif { [string equal $rm_design "s400"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s400.v" } \
elseif { [string equal $rm_design "s420_1"] }  {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s420_1.v" } \
elseif { [string equal $rm_design "s444"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s444.v" } \
elseif { [string equal $rm_design "s510"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s510.v" } \
elseif { [string equal $rm_design "s526"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s526.v" } \
elseif { [string equal $rm_design "s526n"] }   {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s526n.v" } \
elseif { [string equal $rm_design "s5378"] }   {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s5378.v" } \
elseif { [string equal $rm_design "s641"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s641.v" } \
elseif { [string equal $rm_design "s713"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s713.v" } \
elseif { [string equal $rm_design "s820"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s820.v" } \
elseif { [string equal $rm_design "s832"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s832.v" } \
elseif { [string equal $rm_design "s838_1"] }  {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s838_1.v" } \
elseif { [string equal $rm_design "s9234_1"] } {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s9234_1.v" } \
elseif { [string equal $rm_design "s953"] }    {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s953.v" } \
elseif { [string equal $rm_design "s38417"] }  {  set rm_rtl_path "${bench_root}/iscas89"; set CLOCK_PORT blif_clk_net; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}_bench; set rm_rtl_src "s38417.v" } \
\
elseif { [string equal $rm_design "b01"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b01.vhd"; } \
elseif { [string equal $rm_design "b02"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b02.vhd"; } \
elseif { [string equal $rm_design "b03"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b03.vhd"; } \
elseif { [string equal $rm_design "b04"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b04.vhd"; } \
elseif { [string equal $rm_design "b05"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b05.vhd"; } \
elseif { [string equal $rm_design "b06"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b06.vhd"; } \
elseif { [string equal $rm_design "b07"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b07.vhd"; } \
elseif { [string equal $rm_design "b08"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b08.vhd"; } \
elseif { [string equal $rm_design "b09"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b09.vhd"; } \
elseif { [string equal $rm_design "b10"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b10.vhd"; } \
elseif { [string equal $rm_design "b11"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b11.vhd"; } \
elseif { [string equal $rm_design "b12"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b12.vhd"; } \
elseif { [string equal $rm_design "b13"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b13.vhd"; } \
elseif { [string equal $rm_design "b14"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b14.vhd"; } \
elseif { [string equal $rm_design "b14_1"] } {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b14_1.vhd"; } \
elseif { [string equal $rm_design "b15"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b15.vhd"; } \
elseif { [string equal $rm_design "b15_1"] } {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b15_1.vhd"; } \
elseif { [string equal $rm_design "b17"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b17.vhd"; } \
elseif { [string equal $rm_design "b17_1"] } {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b17_1.vhd"; } \
elseif { [string equal $rm_design "b18"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b18.vhd"; } \
elseif { [string equal $rm_design "b18_1"] } {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b18_1.vhd"; } \
elseif { [string equal $rm_design "b19"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b19.vhd"; } \
elseif { [string equal $rm_design "b19_pnr"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b19.vhd"; } \
elseif { [string equal $rm_design "b19_1"] } {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b19_1.vhd"; } \
elseif { [string equal $rm_design "b20"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b20.vhd"; } \
elseif { [string equal $rm_design "b20_1"] } {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b20_1.vhd"; } \
elseif { [string equal $rm_design "b21"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b21.vhd"; } \
elseif { [string equal $rm_design "b21_1"] } {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b21_1.vhd"; } \
elseif { [string equal $rm_design "b22"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b22.vhd"; } \
elseif { [string equal $rm_design "b22_1"] } {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b22_1.vhd"; } \
elseif { [string equal $rm_design "b30"] }   {  set rm_rtl_path "${bench_root}/itc99"; set is_verilog 0; set CLOCK_PORT clock; set rm_rtl_src ""; set is_recursive_read 0; set rm_design_name ${rm_design}; set rm_rtl_src "b30.vhd"; } \
\
elseif { [string equal $rm_design "ac97_ctrl"] }			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/ac97_ctrl"; set rm_design_name "ac97_top" } \
elseif { [string equal $rm_design "ac97_ctrl_16fifo"] }		{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/ac97_ctrl_16fifo"; set rm_design_name "ac97_top" } \
elseif { [string equal $rm_design "aes_core"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/aes_core"; set rm_design_name "aes_cipher_top" } \
elseif { [string equal $rm_design "des3_area"] }			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/des3_area"; set rm_design_name "des3" } \
elseif { [string equal $rm_design "des3_perf"] }			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/des3_perf"; set rm_design_name "des3" } \
elseif { [string equal $rm_design "des_perf"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/des"; set rm_design_name "des3" } \
elseif { [string equal $rm_design "ethernet"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/ethernet"; set rm_design_name "eth_top" } \
elseif { [string equal $rm_design "fft_64"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/fft_64"; set rm_design_name "USFFT64_2B" } \
elseif { [string equal $rm_design "fft_128"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/fft_128"; set rm_design_name "FFT128" } \
elseif { [string equal $rm_design "fft_256"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/fft_256"; set rm_design_name "FFT256" } \
elseif { [string equal $rm_design "fpu"] } 					{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/fpu"; set rm_design_name "fpu" } \
elseif { [string equal $rm_design "fpu_double"] } 			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/fpu_double"; set rm_design_name "fpu" } \
elseif { [string equal $rm_design "gfx"] }					{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/gfx"; set rm_design_name "gfx_top" } \
elseif { [string equal $rm_design "i2c"] }					{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/i2c"; set rm_design_name "i2c_master_top" } \
elseif { [string equal $rm_design "jpegencode"] }			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/jpegencode"; set rm_design_name "jpeg_top" } \
elseif { [string equal $rm_design "mem_ctrl"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/mem_ctrl"; set rm_design_name "mc_top" } \
elseif { [string equal $rm_design "mips_16"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/mips_16"; set rm_design_name "mips_16_core_top" } \
elseif { [string equal $rm_design "pci"] } 					{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/pci"; set rm_design_name "pci_bridge32" } \
elseif { [string equal $rm_design "pid_controller"] }		{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/pid_controller"; set rm_design_name "PID" } \
elseif { [string equal $rm_design "pwm"] }					{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/pwm"; set rm_design_name "PWM" } \
elseif { [string equal $rm_design "rc4-prbs"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/rc4-prbs"; set rm_design_name "rc4" } \
elseif { [string equal $rm_design "reed_solomon_decoder"] }	{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/reed_solomon_decoder"; set rm_design_name "RS_dec" } \
elseif { [string equal $rm_design "sasc"] }					{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/sasc"; set rm_design_name "sasc_top" } \
elseif { [string equal $rm_design "scdma_viterbi"] }		{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/scdma_viterbi"; set rm_design_name "decoder" } \
elseif { [string equal $rm_design "sd_card_controller"] }	{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/sd_card_controller"; set rm_design_name "sdc_controller" } \
elseif { [string equal $rm_design "sha3_high_perf"] }		{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/sha3_high_perf"; set rm_design_name "keccak" } \
elseif { [string equal $rm_design "sha3_low_perf"] }		{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/sha3_low_perf"; set rm_design_name "keccak" } \
elseif { [string equal $rm_design "simple_spi"] }			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/simple_spi"; set rm_design_name "simple_spi_top" } \
elseif { [string equal $rm_design "spi"] }					{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/spi"; set rm_design_name "spi_top" } \
elseif { [string equal $rm_design "spimaster"] }			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/spimaster"; set rm_design_name "spiMaster" } \
elseif { [string equal $rm_design "ss_pcm"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/ss_pcm"; set rm_design_name "pcm_slv_top" } \
elseif { [string equal $rm_design "systemcaes"] }			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/systemcaes"; set rm_design_name "aes" } \
elseif { [string equal $rm_design "systemcdes"] }			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/systemcdes"; set rm_design_name "des" } \
elseif { [string equal $rm_design "tate_pairing"] }			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/tate_pairing"; set rm_design_name "tate_pairing" } \
elseif { [string equal $rm_design "tate_pairing_151"] }		{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/tate_pairing_151"; set rm_design_name "pairing" } \
elseif { [string equal $rm_design "tate_pairing_697"] }		{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/tate_pairing_697"; set rm_design_name "pairing" } \
elseif { [string equal $rm_design "tate_pairing_911"] }		{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/tate_pairing_911"; set rm_design_name "pairing" } \
elseif { [string equal $rm_design "trigonometric_functions_in_double_fpu"] }	{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/trigonometric_functions_in_double_fpu"; set rm_design_name "top" } \
elseif { [string equal $rm_design "tv80"] }					{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/tv80"; set rm_design_name "tv80s" } \
elseif { [string equal $rm_design "uart2bus"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/uart2bus"; set rm_design_name "uart2bus_top" } \
elseif { [string equal $rm_design "usb_funct"] }			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/usb_funct"; set rm_design_name "usbf_top" } \
elseif { [string equal $rm_design "vga_lcd"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/vga_lcd"; set rm_design_name "vga_enh_top" } \
elseif { [string equal $rm_design "wb_conmax"] }			{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/wb_conmax"; set rm_design_name "wb_conmax_top" } \
elseif { [string equal $rm_design "wb_dma"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/wb_dma"; set rm_design_name "wb_dma_top" } \
elseif { [string equal $rm_design "nova"] }					{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/nova"; set rm_design_name "nova" } \
elseif { [string equal $rm_design "xge_mac"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/xge_mac"; set rm_design_name "xge_mac" } \
elseif { [string equal $rm_design "gfx_3"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/gfx_3"; set rm_design_name "TOP" } \
elseif { [string equal $rm_design "gfx_5"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/gfx_5"; set rm_design_name "TOP" } \
elseif { [string equal $rm_design "gfx_20"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/gfx_20"; set rm_design_name "TOP" } \
elseif { [string equal $rm_design "gfx_10"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/gfx_10"; set rm_design_name "TOP" } \
elseif { [string equal $rm_design "tate_3"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/tate_3"; set rm_design_name "TOP" } \
elseif { [string equal $rm_design "tate_5"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/tate_5"; set rm_design_name "TOP" } \
elseif { [string equal $rm_design "jpeg_3"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/jpeg_3"; set rm_design_name "TOP" } \
elseif { [string equal $rm_design "jpeg_5"] }				{  set CLOCK_PORT MY_CLK; set rm_rtl_src ""; lappend rm_rtl_path "${bench_root}/opencores/jpeg_5"; set rm_design_name "TOP" } \
elseif { [string equal $rm_design "NV_NVDLA_partition_a"] }				{  set CLOCK_PORT nvdla_core_clk; set rm_rtl_src ""; lappend rm_rtl_path "/home/wonjae/from_nvdla/NV_NVDLA_partition_a"; set rm_design_name "NV_NVDLA_partition_a" } \
elseif { [string equal $rm_design "NV_NVDLA_partition_c"] }				{  set CLOCK_PORT nvdla_core_clk; set rm_rtl_src ""; lappend rm_rtl_path "/home/wonjae/from_nvdla/NV_NVDLA_partition_c"; set rm_design_name "NV_NVDLA_partition_c" } \
elseif { [string equal $rm_design "NV_NVDLA_partition_m"] }				{  set CLOCK_PORT nvdla_core_clk; set rm_rtl_src ""; lappend rm_rtl_path "/home/wonjae/from_nvdla/NV_NVDLA_partition_m"; set rm_design_name "NV_NVDLA_partition_m" } \
elseif { [string equal $rm_design "NV_NVDLA_partition_o"] }				{  set CLOCK_PORT nvdla_core_clk; set rm_rtl_src ""; lappend rm_rtl_path "/home/wonjae/from_nvdla/NV_NVDLA_partition_o"; set rm_design_name "NV_NVDLA_partition_o" } \
elseif { [string equal $rm_design "NV_NVDLA_partition_p"] }				{  set CLOCK_PORT nvdla_core_clk; set rm_rtl_src ""; lappend rm_rtl_path "/home/wonjae/from_nvdla/NV_NVDLA_partition_p"; set rm_design_name "NV_NVDLA_partition_p" } \
