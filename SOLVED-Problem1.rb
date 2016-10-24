##
# => SOLVED
# => 
#
# If we list all the natural numbers below 10 that are
# multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of
# these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
#
##  It1: 00.056 s
##  It2: 00.040 s => sum = 3 && 5.upto(999)
#
##

def mult3and5
  sum = 3
  5.upto(999) {|num| sum += num if num % 3 == 0 || num % 5 == 0}
  sum
end

print mult3and5
