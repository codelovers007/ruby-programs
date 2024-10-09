#Starting with a 1-indexed array of zeros and a list of operations, for each operation add a value to each 
#the array element between two given indices, inclusive. Once all operations have been performed, 
#return the maximum value in the array.

#Input:
n = 10
queries = [[1, 5, 3], [4, 8, 7], [6, 9, 1]]

#Output:
#10

def arrayManipulation(n, queries)
	# Write your code here
	array = Array.new(n, 0)

	queries.each do |query|
		a = query[0]
		b = query[1]
		k = query[2]

		(a..b).each do |i|
			array[i-1] += k
		end
	end
	array.max
end

arrayManipulation(n, queries)
