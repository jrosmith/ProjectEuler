##
# =>
# =>
#
# The following iterative sequence is defined for the set
# of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate
# the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and
# finishing at 1) contains 10 terms. Although it has not
# been proved yet (Collatz Problem), it is thought that
# all starting numbers finish at 1.
#
# Which starting number, under one million, produces the
# longest chain?
#
# Note: Once the chain starts the terms are allowed to go
# above one million.
#
##  It1:
#
##

# => inputs int: some upper bound number 'n'
# => returns int: number with the longest chain satisfying
# => the Collatz Problem
def chain_solver(n)
  longestChain = 0
  longestNum = 0

  (1..n).each do |num|
    if chain_length(n) > longestChain
      longestNum = num
    end
  end

  longestNum
end

# => inputs int: some number n
# => returns int: length of Collatz Chain
def chain_length(n)
  chainLength = 1

  until n.odd? && n == 1
    n.odd? ? n = 3*n + 1 : n = n/2
    chainLength += 1
  end

  chainLength
end

print chain_solver(1000000)
