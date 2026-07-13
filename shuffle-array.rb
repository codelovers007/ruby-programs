# https://leetcode.com/problems/shuffle-the-array/
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
