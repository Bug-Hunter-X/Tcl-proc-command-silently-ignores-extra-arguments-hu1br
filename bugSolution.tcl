proc goodproc {args} {
  if {[llength $args] != 1} {
    error "Wrong number of arguments: Expected 1, got [llength $args]" 
  }
  puts "$args" 
  return 
}
puts [goodproc a]
puts [goodproc a b c]