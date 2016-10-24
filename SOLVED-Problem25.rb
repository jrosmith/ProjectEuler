##
# => SOLVED
# =>
#
# The Fibonacci sequence is defined by the recurrence relation:
#
# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:
#
# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.
#
# What is the index of the first term in the Fibonacci sequence to
# contain 1000 digits?
#
##  It1: 10.419 s
#
##

# => inputs int: index of Fibonacci number
# => returns int: number
#
## => REVISIT MEMOIZATION <== ##
# http://stackoverflow.com/questions/24438655/ruby-fibonacci-algorithm
#
def fibGen(n, cache = {})
  if n <= 1
    return n
  end
  cache[n] ||= fibGen(n-1, cache) + fibGen(n-2, cache)
end

# => inputs int: number of desired digits of fibNum
# => returns int: index of fibNum with desired digits
def containDigits(n)
  i = 1
  until fibGen(i).to_s.length == n
    i += 1
  end
  i
end

print containDigits(1000)
