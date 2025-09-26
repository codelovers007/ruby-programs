#https://leetcode.com/problems/longest-substring-without-repeating-characters/description/
#Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.

def lengthOfLongestSubstring(str)
  left = 0 
  max_length = 0
  data = Set.new

  str.chars.each_with_index do |ch, right|
    # if char is repeated, then remove from left
    while data.include?(ch)
      data.delete(str[left])
      left+=1
    end

    data.add(ch)
    max_length = [max_length, right - left + 1].max
  end

  max_length
end

s = "abcabcbb"
lengthOfLongestSubstring(s)
