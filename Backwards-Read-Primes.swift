// Backwards Read Primes on Swift
// Source and Description : https://www.codewars.com/kata/5539fecef69c483c5a000015

import UIKit

func backwardsPrime(_ start: Int, _ stop: Int) -> [Int] {
    // your code
    var backwardPrimes: [Int] = []
    for value in stride(from: start, through: stop, by: 1) {
      if isPrime(value) {
        let stringValue = String(value)
        let revStringValue = String(stringValue.reversed())
        let intRevStringValue = Int(revStringValue)! 
        if intRevStringValue == value {
          continue
        }
        if isPrime(Int(revStringValue)!) {
          print(value)
          backwardPrimes.append(value)
        }
      }
    }
    return backwardPrimes
}

func isPrime(_ num: Int) -> Bool {
  var count = 0
    for value in stride(from: 1, through: num, by: 1) {
    if num%value == 0 {
      count += 1
    }
  }
  if count == 2 {
    return true
  } 
  return false
}
