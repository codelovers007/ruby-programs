# Swap value of given variable without any 3rd variable.

a = 100
b = 200

puts "before swaping a = #{a}"
puts "before swaping b = #{b}"

a = a^b
b = a^b
a = a^b

puts "before swaping a = #{a}"
puts "before swaping b = #{b}"