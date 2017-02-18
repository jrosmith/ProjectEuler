##
# => SOLVED
# => REFACTORED
#
# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is
# 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!
#
##  It1: 00.045 s
#
##

# => inputs: some number n
# => returns: n! via recursion
def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

# => inputs: some number n
# => returns: sum of the individual characters as integer
def sumOfDigits(number)
  str = number.to_s
  sum = 0
  str.scan(/./) do |char|
    sum += char.to_i
  end
  sum
end

print sumOfDigits(factorial(100))
