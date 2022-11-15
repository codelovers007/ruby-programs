# Count repeated character numbers 

str = "3222351"

str_arr = str.split("")

data = {}

str_arr.each_with_index{|ch, ind|  data[ch].nil? ? data[ch] = 1 : data[ch] = data[ch] + 1}

p data.each{|key,value| puts "num: #{key} is repeted: #{value} times"}