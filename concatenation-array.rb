# https://leetcode.com/problems/concatenation-of-array/description/
def get_concatenation(nums)
    ans = []
    i = 0

    while i < nums.length do
        ans[i] = ans[i+nums.size] = nums[i]
        i += 1
    end
    ans
end
