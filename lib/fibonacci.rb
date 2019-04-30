# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) where n is the number of the input. As n increases, the while loop operations will increase too.
# Space complexity: O(1). Thought there is an array to store previous_num and this num, the arrays doesn't increase when n increases.
def fibonacci(n)
  raise ArgumentError if n.class != Integer
  raise ArgumentError if n < 0
  return 0 if n == 0
  return 1 if n == 1
  this_num = 1
  previous_num = 0
  index = 0

  while index < n - 1
    array = []
    array << previous_num
    array << this_num
    sum = array[0] + array[1]
    previous_num = this_num
    this_num = sum
    index += 1
  end
  return sum
end
