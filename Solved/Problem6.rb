##
# => SOLVED
# =>
#
# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first
# ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first
# one hundred natural numbers and the square of the sum.
#
##  It1: 00.044 s
#
##

# => input some n > 1
# => returns difference of squared sum from (1..n)
# => and sum of respective squares fro (1..n)
def sumsquaredifference(n)
  nums = (1..n).to_a

  sum_of_squares = nums.inject {|accum, num| accum += num*num}
  squared_sum = nums.inject(:+) * nums.inject(:+)

  squared_sum - sum_of_squares
end

print sumsquaredifference(100)
