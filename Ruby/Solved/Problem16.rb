##
# => SOLVED
# =>
#
# 2**15 = 32768 and the sum of its digits is
# 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2**1000?
#
##  It1: 00.042 s
#
##

# => inputs: degree of two to be analyzed, n
# => returns: sum of digits of 2**n power
def powerOfTwoDigitSum(n)
  num = (2**n).to_s
  sum = 0

  num.scan(/./) do |char|
    sum += char.to_i
  end

  sum
end

print powerOfTwoDigitSum(1000)
