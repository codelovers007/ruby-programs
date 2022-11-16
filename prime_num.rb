# 1. Write a program to check its prime or not
def is_prime(num)
  (2..(num - 1)).each do |n|
    return false if num % n == 0
  end
  true
end

p is_prime(7)


# 2. Print 2..100 all the prime numbers

data = []

(2..100).each do |num|
  data << num if is_prime(num)
end

p data