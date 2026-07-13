#[Leetcode] 1470. Shuffle the Array
def shuffle(nums, n)
    i = 0
    result = []

    while i < n
        result << nums[i]
        result << nums[i+n]

        i+=1
    end
    result
end
