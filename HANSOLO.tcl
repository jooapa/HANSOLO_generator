set fp [open "HANSOLO.hs" w]
for {set i 0} {$i < 1000000} {incr i} {
    puts $fp "HANSOLO"
}
close $fp
