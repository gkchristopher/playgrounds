import PlaygroundSupport
import UIKit

func multiply(lhs: Int, rhs: UInt) -> Int {
    var total = 0
    (0..<rhs).forEach { _ in
        total += lhs
    }
    return total
}

multiply(lhs: 2, rhs: 3)

let blueView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
blueView.backgroundColor = .blue
PlaygroundPage.current.liveView = blueView


func simplify(_ arrayOfInts: [Int]) -> [Int] {
    return Set(arrayOfInts).sorted()
}

simplify([0, 9, 8, 3, 3, 3, 5, 9, 5, 0])
