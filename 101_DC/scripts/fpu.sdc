
create_clock -period 2 [get_ports gclk]

set input_except_clock [ remove_from_collection [all_inputs ] [get_ports gclk]]
set_input_delay  1 -clock gclk [get_ports [all_inputs]]

set_output_delay -clock gclk 1 [get_ports [all_outputs]]

set_load -pin_load 0.004 [get_ports [all_outputs]]

set_max_fanout 200 [current_design]

set_max_transition 0.1 [current_design]
set_max_capacitance 100 [current_design]



