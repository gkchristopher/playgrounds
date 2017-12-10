//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func intBuilder(result: Int, next: String) -> Int {
    return result * 10 + Int(next)!
}

let digits = ["3", "1", "4", "1"]
let result = digits.reduce(0, intBuilder)
