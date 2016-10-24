##
# =>
# =>
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
#
# NUM 13195
##  It1: 00.820 s => 2.upto(n - 1) do |num|
##  It2: 01.017 s => 3.upto(n - 1) do |num|
##  It3: 00.066 s => 2.upto((Math.sqrt(n).to_i) + 1) do |num|
##  It4: 00.056 s => switch n % x == 0 and prime?(x)
##  It5: 00.046 s => remove array, only store largest_prime
##  It6: 00.040 s => remove if statement, always replace largest_prime
##  It7: DNT      => nest factor and prime checks, begin at 24
#
# NUM 600851475143
##  It3: ^C after 300 s
##  It5: ^C after 300 s
##  It6: ^C after 300 s
##  It7: ^C after 240 s
#
##
def prime?(n)
  2.upto((Math.sqrt(n).to_i) + 1) do |num|
    return false if n % num == 0
  end
  true
end

def largestprimefactor(n)
  largest_prime = 1
  24.upto(n  - 1) do |x|
     if n % x == 0
       if prime?(x)
         largest_prime = x
       end
     end
  end
  largest_prime
end

print largestprimefactor(600851475143)
