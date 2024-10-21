
def pattern_printer(n)
	(1..n).each do |i|
		print ' ' * (n - i)
		print '*' * (2 * i - 1)
		puts
	end

	(n-1).downto(1) do |i|
		print ' ' * (n - i)
		print '*' * (2 * i -1)
		puts
	end
end


# Output
pattern_printer(6)

#      *
#     ***
#    *****
#   *******
#  *********
# ***********
#  *********
#   *******
#    *****
#     ***
#      *