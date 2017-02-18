// Problem 1
//
// If we list all the natural numbers below 10 that are
// multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of
// these multiples is 23.
//
// Find the sum of all the multiples of 3 or 5 below 1000.
package main

import (
  "fmt"
  )

func sum3and5(num int) (sum int) {
  for i := 0; i <= num; i++ {
    if i % 3 == 0 || i % 5 == 0 {
      sum += i
    }
  }

  return sum
}

func main() {
  fmt.Println(sum3and5(999))
}
