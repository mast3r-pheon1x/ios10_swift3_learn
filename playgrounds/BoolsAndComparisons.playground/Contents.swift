//: Playground - noun: a place where people can play

import UIKit

var amICool: Bool = true
amICool = false

var employeeSalaries: [Double] = [45000.0, 54000.0, 100000.0, 20000.0]

for i in 0..<5 {
    print(i)
}

var stringArray: [String] = []

var doubleArray: [Double] = [1.0,2.0,3.0,4.0]

var anyArray: [Any] = [1, "two", 3.0, 4]

anyArray.append(13214234141423421)
anyArray.remove(at: 2)
anyArray
anyArray.removeAll()
anyArray
doubleArray.popLast()
doubleArray

var oddNumbers: [Int] = []

for i in 0...100 {
    if(i % 2 == 1) { oddNumbers.append(i) }
}

print(oddNumbers)
var sums: [Int] = []

for oddNumber in oddNumbers {
    sums.append(oddNumber + 5)
}

print(sums)

var i = 0
repeat {
    print("The sum is: \(sums[i])")
    i += 1
} while i < sums.count


var lotteryWinnings: Int?

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

if let winnings = lotteryWinnings {
    print(winnings)
}

var variable: [Int]?


