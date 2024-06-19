array = [{"a" => 10},{"b" => 20},{"c" => 30}]

# How can you obtain the following?

# 1. one array containing all keys
# 2. another containing all values
# 3. the sum of all the values

data = {}
array.each{|el| data.merge!(el)}


# y = x[0].merge(x[1]).merge(x[2])

data.keys                   # will return all keys
data.values                 # will return all values
data.values.inject(:+)      # will return the sum of all values or data.values.sum
