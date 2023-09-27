set list_instance [get inst * -glob]
set file_instance [open instance_power.txt w]

set list_len [llength $list_instance]

puts "#instances: $list_len"

puts ${file_instance} "Instance_name\tAvg_power\tPin_x\tPin_y\tNet_name"

foreach itr ${list_instance} {
	set instance_name ${itr}
	set avg_power   [ get inst ${itr} -power]
	set pin_x		[ lindex [ get inst ${itr} -pin VDD -location ] 0 ]
	set pin_y		[ lindex [ get inst ${itr} -pin VDD -location ] 1 ]
	set net_name	"VDD"

	puts ${file_instance} "${instance_name}\t${avg_power}\t${pin_x}\t${pin_y}\t${net_name}"
}
close ${file_instance}
