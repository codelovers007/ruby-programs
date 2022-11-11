=begin

  Q) Return two seperate array of even and odd numbers in a single array
  Input:
  arr = [1,2,3,4,5,6]
  Output: [[2, 4, 6], [1, 3, 5]]
  
  We have two approaches here:
  1) One liner code
  2) Multiline code 
=end

arr = [1,2,3,4,5,6]

# 1) One liner code
result_1 = arr.each_with_object({even: [], odd: []}) { |num, data| num%2==0 ? data[:even] = data[:even] << num : data[:odd] = data[:odd] << num}.values

p "One Liner Code Output: #{result_1}"

# 2) Multiline code 
result_2 = arr.each_with_object({even: [], odd: []}) do |num, data|
  if num % 2 == 0
    data[:even] << num
  else
    data[:odd] << num
  end
end.values

p "Multiline Code Output: #{result_2}"