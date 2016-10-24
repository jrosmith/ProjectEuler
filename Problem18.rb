##
# =>
# =>
#
# By starting at the top of the triangle below and moving to
# adjacent numbers on the row below, the maximum total from
# top to bottom is 23.
#
EXAMPLE = "3
7 4
2 4 6
8 5 9 3"
# That is, 3 + 7 + 4 + 9 = 23.
#
# Find the maximum total from top to bottom of the triangle below:
#
NUM = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"
#
# Note: As there are only 16384 routes, it is possible to solve
# this problem by trying every route. However, Problem 67, is the
# same challenge with a triangle containing one-hundred rows; it
# cannot be solved by brute force, and requires a clever method! ;o)
#
##

# => input string: numeric text rendering of triangle to be
# => solved, 'str'
# => return array: array where each index contains an array of
# => all elements per row of 'str'
def arrayCreator(str)
  triangle = Array.new
  str.scan(/^\d+/) do |num|

  end
  return triangle
end

# => inputs array: multi-dimensional array 'array' that translates
# => to a triangle, where row 1 of the triangle has index 0 and is
# => an array of length 1, row 2 has index 1 and length 2, etc.
# => returns int: sum of all numbers in the optimal path
testRay = [[3],[7,4],[2,4,6],[8,5,9,3]]

def optimalPath(array)
  idx = 0
  sum = array[0][0]
  chosen = 0

  while idx < array.length - 1
    add = check(array[idx+1][chosen], array[idx+1][chosen+1])
    sum += add
    chosen = array[idx+1].find_index(add)
    idx += 1
  end

  sum
end

def check(a,b)
  a > b ? a : b
end

print optimalPath(testRay)
