##
# => SOLVED
# =>
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
#
##  It1: 04.466 s
#
##

# => patch Fixnum to include prime check method
class Fixnum
  # => return true if number is prime, fastest for Bignums
  def prime?
    return true if self == 2 || self == 3
    return false if self % 2 == 0 || self % 3 == 0

    i = 5
    j = 2

    while i*i <= self
      if self % i == 0
        return false
      end
      i += j
      j = 6 - j
    end
    true
  end
end

# => inputs: upper bound n
# => returns: integer sum of all primes below n
def primesum(n)
  sum = 5
  i = 1
  until (6*i + 1 > n) do
    sum += (6*i + 1) if (6*i + 1).prime?
    sum += (6*i - 1) if (6*i - 1).prime?
    i += 1
  end
  sum
end

print primesum(2000000)
