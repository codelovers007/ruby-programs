# Find the count of the number of times a query appears in a list of strings
# Inputs: 
stringList = ['aba', 'baba', 'aba', 'xzxb']
queries = ['aba', 'xzxb', 'ab']

def matchingStrings(stringList, queries)
    # Write your code here
	stringCounts = stringList.each_with_object({}) { |a, data| data[a].nil? ? data[a] = 1 : data[a] += 1 }
	queries.map { |q| stringCounts[q] || 0 }
end

matchingStrings(stringList, queries)
# Output = [2, 1, 0]
