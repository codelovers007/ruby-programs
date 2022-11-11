=begin
	Q) Write a program to sort input array.

	# Input:
	a = [43,1,67,34,2,9]
	# Output: 
	asc: [1, 2, 9, 34, 43, 67]
	desc: [67, 43, 34, 9, 2, 1]
=end

# Ascending Order
def asc_sort_arr(a)
	loop do
		swapped = false
		(a.length-1).times do |i|
			if a[i] > a[i+1]
				a[i], a[i+1] = a[i+1], a[i]
				swapped = true
			end
		end
		break if !swapped
	end
	a
end

# Descending Order
def desc_sort_arr(a)
	loop do
		swapped = false
		(a.length-1).times do |i|
			if a[i] < a[i+1]
				a[i], a[i+1] = a[i+1], a[i]
				swapped = true
			end
		end
		break if !swapped
	end
	a
end

# Input:
a = [43,1,67,34,2,9]
# calling above sort method

p "Ascending Order #{asc_sort_arr(a)}"
p "Ascending Order #{desc_sort_arr(a)}" 
