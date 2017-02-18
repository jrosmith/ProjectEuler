##
# => SOLVED
# =>
#
# 2520 is the smallest number that can be divided by each
# of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly
# divisible by all of the numbers from 1 to 20?
#
##  It1: 48.304 s
#
##

# => input upper bound, returns smallest natural number divisible
# => by all numbers from 1 to the upper bound.

def smallest(n)
  smallest = 90
  divisors = (1..n).to_a
  i = 0

  until divisors[i] == n
    if smallest % divisors[i] == 0
      i += 1
    else
      smallest += 1
      i = 0
    end
  end

  smallest
end

print smallest(20)
