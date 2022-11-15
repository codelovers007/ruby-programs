# Print integers from given string

# I/O = "38? B.P.K. Uk 0 Guha Road9.7/h"

# O/P = "38097"

str = "38? B.P.K. Uk 0 Guha Road9.7/h"

int_arr = []

str.split("").map{|ch| int_arr << ch if ch.match?("\\d") }

int_arr.join("")
