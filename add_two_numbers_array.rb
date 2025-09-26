# https://leetcode.com/problems/add-two-numbers/
l1 = [9,9,9,9,9,9,9]
l2 = [9,9,9,9]

# It will also work for the below inputs
# l1 = [9,9,9,9]
# l2 = [9,9,9,9,9,9,9]

# output: [8,9,9,9,0,0,0,1]

def add_two_numbers(l1, l2)
  i = 0

  output = []
  biggest_size =  l1.length > l2.length ? l1.length : l2.length
  reminder = 0
  
  while i < biggest_size
    sum = reminder + l1[i].to_i + l2[i].to_i
    digit = sum%10 # keep the digit like is sum is 19 then keep 9 only
    reminder = sum/10 # keep the reminder like is sum is 19 then keep 1 in it
    output << digit
    i+=1
  end
  
  output << reminder unless reminder.zero?
  output
end

add_two_numbers(l1, l2)
