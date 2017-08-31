//: Playground - noun: a place where people can play

import UIKit

func calculateArea(length: Int, width: Int) -> Int {
    return length * width
}

let shape1 = calculateArea(length: 4, width: 5)

func purchaseItem(currentBalance: inout Double, itemPrice: Double) {
    if(itemPrice < currentBalance) {
        currentBalance = currentBalance - itemPrice
        print("Purchased item for $\(itemPrice)")
    } else {
        print("You are broke biatch")
    }
}

var currentBalance = 500.00
var item1Price = 200.00
var item2Price = 40.00

purchaseItem(currentBalance: &currentBalance, itemPrice: item1Price)
purchaseItem(currentBalance: &currentBalance, itemPrice: item2Price)
