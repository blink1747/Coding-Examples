//Numbers with this digit inside on Swift
//Description Source: https://www.codewars.com/kata/57ad85bb7cb1f3ae7c000039

import UIKit

func numbersWithDigitInside(_ x: Int, _ d: Int) -> [Int] {
  var count: Int = 0
  var sum: Int = 0
  var product: Int = 1
  for value in stride(from: 1, through: x, by: 1) {
    if isPresent(value,d) {
      count += 1
      sum += value
      product *= value
    }
  }
  return [count, sum, count != 0 ? product : 0]
}

func isPresent(_ num: Int, _ digit: Int) -> Bool {
  if String(num).contains(String(digit)) {
    return true
  }
  return false
}
