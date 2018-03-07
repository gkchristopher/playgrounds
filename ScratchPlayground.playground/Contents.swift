//: Playground - noun: a place where people can play

func multiply(lhs: Int, rhs: UInt) -> Int {
    var total = 0
    (0..<rhs).forEach { _ in
        total += lhs
    }
    return total
}

multiply(lhs: 2, rhs: 3)
