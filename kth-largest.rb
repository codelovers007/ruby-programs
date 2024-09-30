# Given an unsorted array of size n return the k'th largest element in the array.
 
# ex:
 
# Input  
# array = [2,4,1,6,5,3,7]
# k = 3
 
# Output: 5

def find_kth_larget_element(data, k)
    loop do
        swap = false
        (data.length-1).times do |i|
            if data[i] > data[i+1]
                data[i], data[i+1] = data[i+1], data[i]
                swap = true
            end
        end
        break !swap
    end 
    data[-k]
end

# To run the inputs
array = [2,4,1,6,5,3,7]
k = 3
find_kth_larget_element(array, k)


