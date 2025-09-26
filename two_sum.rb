# https://leetcode.com/problems/two-sum/

nums = [2,7,11,15]
target = 9

def two_sum(nums, target)
  i = 0
  indices = []
  while i < nums.length do
    j = i + 1
    while j < nums.length do
      if nums[i] + nums[j] == target
        indices << i
        indices << j
      end
      j+=1
    end
    i+=1
  end
  indices
end

two_sum(nums, target)
