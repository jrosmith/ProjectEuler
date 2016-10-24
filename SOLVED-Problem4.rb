##
# => SOLVED
# =>
#
# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers
# is 9009 = 91 × 99.
#
# Find the largest palindrome made from
# the product of two 3-digit numbers.
#
##  It1: 00.0605 s
#
##

# => inputs: some number n
# => returns: true if number is a palindrome, false otherwise
def palindrome?(n)
  n.to_s.reverse == n.to_s ? true : false
end

def largestdrome
  largest = 9009
  999.downto(1) do |num|
    999.downto(1) do |x|
      if palindrome?(x*num) && x*num > largest
        largest = x * num
      end
    end
  end
  largest
end

print largestdrome
