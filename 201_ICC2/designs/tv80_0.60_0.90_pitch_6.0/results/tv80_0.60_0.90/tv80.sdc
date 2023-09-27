################################################################################
#
# Design name:  tv80s
#
# Created by icc2 write_sdc on Tue Sep 19 16:15:23 2023
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: slow
# Scenario: func_slow

# /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 44
create_clock -name MY_CLK -period 1.2 -waveform {0 0.6} [get_ports {MY_CLK}]
set_propagated_clock [get_clocks {MY_CLK}]
# /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 48; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 49; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 50; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 51
set_clock_gating_check -hold 0 -setup 0 [get_pins \
    {clk_gate_i_tv80_core_BusAck_reg/main_gate/A1}]
# /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 48; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 49; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 50; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 51
set_clock_gating_check -hold 0 -setup 0 [get_pins \
    {clk_gate_i_tv80_core_BusAck_reg/main_gate/A2}]
# /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 48; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 49; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 50; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 51
set_clock_gating_check -hold 0 -setup 0 [get_pins \
    {clk_gate_i_tv80_core_BusAck_reg/main_gate/X}]
# /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 52; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 53; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 54; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 55
set_clock_gating_check -hold 0 -setup 0 [get_pins \
    {clk_gate_i_tv80_core_BusB_reg/main_gate/A1}]
# /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 52; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 53; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 54; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 55
set_clock_gating_check -hold 0 -setup 0 [get_pins \
    {clk_gate_i_tv80_core_BusB_reg/main_gate/A2}]
# /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 52; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 53; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 54; \
#   /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 55
set_clock_gating_check -hold 0 -setup 0 [get_pins \
    {clk_gate_i_tv80_core_BusB_reg/main_gate/X}]
# /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 45
group_path -name FEEDTHROUGH -from [get_ports {reset_n wait_n int_n nmi_n \
    busrq_n di_7_ di_6_ di_5_ di_4_ di_3_ di_2_ di_1_ di_0_}] -to [get_ports \
    {m1_n mreq_n iorq_n rd_n wr_n rfsh_n halt_n busak_n A_15_ A_14_ A_13_ A_12_ \
    A_11_ A_10_ A_9_ A_8_ A_7_ A_6_ A_5_ A_4_ A_3_ A_2_ A_1_ A_0_ do_7_ do_6_ \
    do_5_ do_4_ do_3_ do_2_ do_1_ do_0_}]
# /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 46
group_path -name REGIN -from [get_ports {reset_n wait_n int_n nmi_n busrq_n \
    di_7_ di_6_ di_5_ di_4_ di_3_ di_2_ di_1_ di_0_}]
# /home/ischo/generative-IR/experiments/101_DC/designs/tv80/results/tv80s.mapped.sdc, \
#   line 47
group_path -name REGOUT -to [get_ports {m1_n mreq_n iorq_n rd_n wr_n rfsh_n \
    halt_n busak_n A_15_ A_14_ A_13_ A_12_ A_11_ A_10_ A_9_ A_8_ A_7_ A_6_ A_5_ \
    A_4_ A_3_ A_2_ A_1_ A_0_ do_7_ do_6_ do_5_ do_4_ do_3_ do_2_ do_1_ do_0_}]
set_load -pin_load 0.05 [get_ports {m1_n}]
set_load -pin_load 0.05 [get_ports {mreq_n}]
set_load -pin_load 0.05 [get_ports {iorq_n}]
set_load -pin_load 0.05 [get_ports {rd_n}]
set_load -pin_load 0.05 [get_ports {wr_n}]
set_load -pin_load 0.05 [get_ports {rfsh_n}]
set_load -pin_load 0.05 [get_ports {halt_n}]
set_load -pin_load 0.05 [get_ports {busak_n}]
set_load -pin_load 0.05 [get_ports {A_15_}]
set_load -pin_load 0.05 [get_ports {A_14_}]
set_load -pin_load 0.05 [get_ports {A_13_}]
set_load -pin_load 0.05 [get_ports {A_12_}]
set_load -pin_load 0.05 [get_ports {A_11_}]
set_load -pin_load 0.05 [get_ports {A_10_}]
set_load -pin_load 0.05 [get_ports {A_9_}]
set_load -pin_load 0.05 [get_ports {A_8_}]
set_load -pin_load 0.05 [get_ports {A_7_}]
set_load -pin_load 0.05 [get_ports {A_6_}]
set_load -pin_load 0.05 [get_ports {A_5_}]
set_load -pin_load 0.05 [get_ports {A_4_}]
set_load -pin_load 0.05 [get_ports {A_3_}]
set_load -pin_load 0.05 [get_ports {A_2_}]
set_load -pin_load 0.05 [get_ports {A_1_}]
set_load -pin_load 0.05 [get_ports {A_0_}]
set_load -pin_load 0.05 [get_ports {do_7_}]
set_load -pin_load 0.05 [get_ports {do_6_}]
set_load -pin_load 0.05 [get_ports {do_5_}]
set_load -pin_load 0.05 [get_ports {do_4_}]
set_load -pin_load 0.05 [get_ports {do_3_}]
set_load -pin_load 0.05 [get_ports {do_2_}]
set_load -pin_load 0.05 [get_ports {do_1_}]
set_load -pin_load 0.05 [get_ports {do_0_}]
# Set latency for io paths.
# -origin user
set_clock_latency -rise 0.0444222 [get_clocks {MY_CLK}]
# -origin user
set_clock_latency -fall 0.00232697 [get_clocks {MY_CLK}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {MY_CLK}]
set_clock_transition -max 0.15 [get_clocks {MY_CLK}]
set_max_transition 0.3 [current_design]
set_max_transition 0.05 [get_clocks {MY_CLK}] -clock_path
