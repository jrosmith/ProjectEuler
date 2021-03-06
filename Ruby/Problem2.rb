##
# => SOLVED
# =>
#
# Each new term in the Fibonacci sequence is generated by
# adding the previous two terms. By starting with 1 and 2,
# the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose
# values do not exceed four million, find the sum of the
# even-valued terms.
#
##  It1: 00.043 s
#
##

#populate an array with fib numbers that do not exceed given value
def fib(n)
  terms = [1,2]
  lesser = true

  while lesser do
    num = terms[terms.length - 1] + terms[terms.length - 2]
    num < n ? terms << num : lesser = false
  end

  terms
end

# return sum of even fib numbers up to some value
def evenfibsum(n)
  nums = fib(n)
  sum = 0
  nums.each do |x|
    sum += x if x % 2 == 0
  end
  p sum
end

evenfibsum(4000000)
