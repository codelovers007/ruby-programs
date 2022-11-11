=begin

Q) Get all the combinations of two numbers whose sum is divisible by 3.
  Input: 
  arr = [3,6, 9,2, 1,0, 7,22]

  Output:
    [3, 3]
    [3, 6]
    [3, 9]
    [3, 0]
    [6, 3]
    [6, 6]
    [6, 9]
    [6, 0]
    [9, 3]
    [9, 6]
    [9, 9]
    [9, 0]
    [2, 1]
    [2, 7]
    [1, 2]
    [0, 3]
    [0, 6]
    [0, 9]
    [0, 0]
    [7, 2]

=end


def get_combinations(arr, n)
  (arr.length-1).times do |i|
    (arr.length-1).times do |j|
      puts "#{[arr[i], arr[j]]}" if (arr[i]+arr[j]) % n == 0
    end
  end
end


# Inputs
arr = [3,6, 9,2, 1,0, 7,22]
n = 3

# calling above method here.

get_combinations(arr, n)