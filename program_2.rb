# Write a function printer which accepts an integer number and prints all the numbers from 1 to that
# given number but for every number that is a multiple of 3 it prints “Presto” and for every number that
# is a multiple of 5 it prints “Apps” and for every number that is a multiple of both 3 and 5 it prints
# “Presto Apps”.

def printer_method(num)
	(1..num).each do |num|
		puts num
		if num % 3 == 0 && num % 5 == 0			
			puts "Presto Apps"
			next
		elsif num % 3 == 0
			puts "Presto"
			next
		elsif num % 5 == 0
			puts "Apps"
			next
		end
	end
end