#Starting with a 1-indexed array of zeros and a list of operations, for each operation add a value to each the array element between two given indices, inclusive. Once all operations have been performed, return the maximum value in the array.
#Input:
n = 10
queries = [[1, 5, 3], [4, 8, 7], [6, 9, 1]]

#Output:
#10

def arrayManipulation(n, queries)
	arr = Array.new(n+1, 0)
	queries.each do |query|
		a, b, k = query
		arr[a-1] += k
		arr[b] -= k
	end

	max = 0
	sum = 0

	arr.each do |val|
		sum+=val
		max = [max, sum].max
	end
	max
end
