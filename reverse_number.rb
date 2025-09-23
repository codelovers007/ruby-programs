def reverse(a)
  reversed = 0

  while a > 0
    # get the last digit of the original number using the modulo operator (% 10). For example, 123 % 10 is 3.
    reminder = a % 10
    # Append this digit to the reversed number by first multiplying the reversed number by 10 and then adding the last digit. This effectively shifts the existing digits of reversed to the left 
    reversed = (reversed * 10) + reminder
    # Remove the last digit from the original number by using integer division (/ 10). For example, 123 / 10 is 12.
    a = a / 10
  end

  reversed
end

num = 123

reverse(num)
