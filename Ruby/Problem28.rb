##
# => SOLVED
# =>
#
# Starting with the number 1 and moving to the right in a
# clockwise direction a 5 by 5 spiral is formed as follows:
#
# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13
#
# It can be verified that the sum of the numbers on the
# diagonals is 101.
#
# What is the sum of the numbers on the diagonals in a
# 1001 by 1001 spiral formed in the same way?
#
##  It1:
#
##

# => inputs int: dimensions of grid 'dim'.
# => returns int: sum of diagonals of grid
def squareRaySolver(dim)
  sum = 0
  until dim < 1
    sum += squareHelper(dim)
    dim = dim - 2
  end
  sum
end

# => inputs int: dimension of grid 'dim'
# => returns int: sum of outer four corners of grid with
# => dimension 'dim'
def squareHelper(dim)
  corner4 = dim*dim
  subtractor = dim - 1
  if dim == 1
    return 1
  else
    return corner4 + (corner4 - subtractor) + (corner4 - subtractor*2) + (corner4 - subtractor*3)
  end
end

print squareRaySolver(1001)
