set cnt 0
foreach_in_collection err $errors {
    set bbox [get_attribute $err bbox]
    puts -nonewline $fp $bbox
    #puts $fp "\t[get_attribute $err error_type]"
    set error_type [get_attribute $err type_name]
    puts -nonewline $fp " {$error_type}"
    #flush $fp
    
    set layers [get_attribute $err layers]
    foreach_in_collection layer $layers {
        set lay [get_attribute $layer name]
        puts -nonewline $fp " $lay"
        #flush $fp
    }
    puts $fp ""

    set cnt [expr ($cnt + 1)]
}
