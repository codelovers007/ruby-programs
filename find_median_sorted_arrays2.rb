nums1 = [2,2,4,4]
nums2 = [2,2,4,4]

#Input: nums1 = [1,3], nums2 = [2]
#Output: 2.00000
#Explanation: merged array = [1,2,3] and median is 2.

#Input: nums1 = [1,2], nums2 = [3,4]
#Output: 2.50000
#Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.

def find_median_sorted_arrays(nums1, nums2)
  merged_array = []

  i, j = 0, 0
  
  while i < nums1.length && j < nums2.length
    if nums1[i] <= nums2[j]
      merged_array << nums1[i]
      i += 1
    else
      merged_array << nums2[j]
      j += 1
    end
  end

  # Append remaining elements from both arrays
  #here i is still have last value from the above while loop
  while i < nums1.length
    merged_array << nums1[i]
    i += 1
  end
  
  #here j is still have last value from the above while loop
  while j < nums2.length
    merged_array << nums2[j]
    j += 1
  end

  if merged_array.length.even?
    mid_index = (merged_array.length-1)/2
    mid_index_2 = mid_index + 1

    return (merged_array[mid_index] + merged_array[mid_index_2]).to_f / 2
  else
    mid_index = (merged_array.length-1)/2

    return merged_array[mid_index]
  end
end

find_median_sorted_arrays(nums1, nums2)
