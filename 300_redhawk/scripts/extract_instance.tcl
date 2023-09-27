
set list_instance [get inst * -glob]
set file_instance [open list_instance.txt w]

set list_len [llength $list_instance]

puts "#instances: $list_len"

#puts ${file_instance} "Instance_name\tAvg_power\tPin_x\tPin_y\tVDD_drop\tNet_name"
puts ${file_instance} "Instance_name\tAvg_power\tPin_x\tPin_y\tVDD_drop\tNet_name"

foreach itr ${list_instance} {
	set instance_name ${itr}
	set avg_power   [ get inst ${itr} -power]
	set pin_x		[ lindex [ get inst ${itr} -pin VDD -location ] 0 ]
	set pin_y		[ lindex [ get inst ${itr} -pin VDD -location ] 1 ]
#	if { [catch {set VDD_drop	[ get inst ${itr} -voltage -pin VDD ]} errmsg] } {
#        puts "ErrorMsg: $errmsg"
#        puts "\tContinue"
#        continue
#    }
	set net_name	"VDD"
    set VDD_drop [ get inst ${itr} -voltage -pin VDD ]
    #set current [ get inst ${itr} -current -pin VDD#]


	#puts ${file_instance} "${instance_name}\t${avg_power}\t${pin_x}\t${pin_y}\t0.00\t${net_name}"
	puts ${file_instance} "${instance_name}\t${avg_power}\t${pin_x}\t${pin_y}\t${VDD_drop}\t${net_name}"
}
close ${file_instance}

set list_node [get node *]

set file_node [open list_node.txt w]

puts "#nodes: [llength $list_node]"

foreach node ${list_node} {
    puts $file_node "$node"
}

close $file_node
