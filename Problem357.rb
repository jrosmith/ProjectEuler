##
# =>
# =>
#
# Consider the divisors of 30: 1,2,3,5,6,10,15,30.
# It can be seen that for every divisor d of 30, d+(30/d) is prime.
#
# Find the sum of all positive integers n not exceeding 100 000 000
# such that for every divisor d of n, d+n/d is prime.
#
##  It1:
#
##

# => Patch Fixnum to include prime check method
class Fixnum
  # => return true if number is prime
  def prime1?
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

  def prime2?
    return true if self == 2
    2.upto((Math.sqrt(self).to_i) + 1) do |num|
      return false if self % num == 0
    end
    true
  end

end

# => inputs: some number n
# => returns: array of factors
def factorsOf(n)
  factors = Array.new
  (1..n).each do |num|
    factors << num if n % num == 0
  end
  factors
end

# => inputs: some number n
# => returns: true for numbers for which all factors d
# => yield a prime according to d + (30/d), false for
# => all other numbers
def specialFactors(n)
  factorsOf(n).all? {|d| (d + (n/d)).prime1?}
end

# => inputs: some max number n
# => returns: sum of all numbers up to n whose
# => factors satisfy specialFactors method
def specialFactorSum(n)
  sum = 0
  1.upto(n) do |num|
    if specialFactors(num)
      sum += num
    end
  end
  sum
end

print specialFactorSum(100000000)




## TEST for different prime methods.
# start1 = Time.now.to_f
# print "prime1 returns #{104395301.prime1?} "
# finish1 = Time.now.to_f
# puts "in #{finish1 - start1} s."
# start2 = Time.now.to_f
# print "prime2 returns #{104395301.prime2?} "
# finish2 = Time.now.to_f
# puts "in #{finish2 - start2} s."
