# Write a function named squarer which accepts an array of integers and returns an array with the
#squares of those integers. Do think of all the possible inputs, both good and bad, that might be
# passed to this function and make sure the function gracefully handles all those inputs.

def squarer(arr)
    arr.map {|n| n**2}
end

#Output
# [1, 4, 27, 256, 3125]

#Input
squarer([1,2,3,4,5])