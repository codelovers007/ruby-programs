#[LeetCode] 1471. The k Strongest Values in an Array

#arr = [6,7,11,7,6,8]
#k = 5

#output:
#[11,8,6,6,7]

def get_strongest(arr, k)
  left = 0
  n = arr.size
  right = n - 1
  result = []
  arr.sort!

  while result.size < k
    mid = arr[(n - 1)/2]
    left_strong = (arr[left] - mid).abs
    right_string = (arr[right] - mid).abs

    if left_strong == right_string
      if arr[right] > arr[left]
        result << arr[right]
        right -= 1
      else
        result << arr[left]
        left += 1
      end
    elsif right_string > left_strong
      result << arr[right]
      right -= 1
    elsif right_string < left_strong
      result << arr[left]
      left += 1
    end
  end
  result
end
