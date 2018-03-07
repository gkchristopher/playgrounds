//: Playground - noun: a place where people can play

func multiply(lhs: Int, rhs: UInt) -> Int {
//    return lhs * rhs
    var total = 0
    for _ in 0..<rhs {
        total += lhs
    }
    return total
}

multiply(lhs: 2, rhs: 2)
