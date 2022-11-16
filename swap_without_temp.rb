# Swap value of given variable by without using any 3rd variable.

a = 10
b = 20

puts "before swaping a = #{a}"
puts "before swaping b = #{b}"

a = a+b
b = a-b
a = a-b

puts "before swaping a = #{a}"
puts "before swaping b = #{b}"