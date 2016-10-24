##
# => SOLVED
# =>
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?
#
##  It1: 00.330 s
#
##

# => inputs: number of desired prime number
# => returns: nth prime number where 2 is
# => considered the 1st prime.
def nthprime(n)
  num = 2
  number_of_prime = 1

  while number_of_prime != n
    if prime?(num)
      number_of_prime += 1
      num += 1
    else
      num += 1
    end
  end

  num - 1
end

# => inputs: n
# => return: true if n is prime, false if n is not prime
def prime?(n)
  2.upto((Math.sqrt(n).to_i) + 1) do |num|
    return false if n % num == 0
  end
  true
end

print nthprime(10001)
