# https://leetcode.com/problems/median-of-two-sorted-arrays/
#Input: 
nums1 = [1,2]
nums2 = [3,4]
# Output: 2.50000
# Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.

def find_median_sorted_arrays(nums1, nums2)
  final_array = nums1 + nums2

  i = 0

  while i < final_array.length
    break if final_array[i + 1].nil?

    if final_array[i] > final_array[i + 1]
      swap_value = final_array[i + 1]
      final_array[i + 1] = final_array[i]
      final_array[i] = swap_value
    end
    i+=1
  end

  if final_array.length.even?
    mid_index = (final_array.length-1)/2
    mid_index_2 = mid_index + 1

    return (final_array[mid_index] + final_array[mid_index_2]).to_f / 2
  else
    mid_index = (final_array.length-1)/2

    return final_array[mid_index]
  end
end

find_median_sorted_arrays(nums1, nums2)
