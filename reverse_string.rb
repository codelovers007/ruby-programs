def reverse_str(str)
  reversed = ''
  i = str.length - 1

  while i >= 0
    reversed = reversed + str[i]
    i-=1
  end

  reversed
end

str = "hello"

reverse_str(str)
