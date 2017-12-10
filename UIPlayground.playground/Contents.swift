//: Playground - noun: a place where people can play

import UIKit

class SymbolButton: UIButton {
    
    var ovalColor = UIColor.yellowColor() {
        didSet {
            setNeedsDisplay()
        }
    }
    var cornerRadius: CGFloat = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func drawRect(rect: CGRect) {
        let ovalBackground = UIBezierPath(roundedRect: rect, cornerRadius: cornerRadius)
        ovalColor.setFill()
        ovalBackground.fill()
    }
}

var str = "Hello"

let symButton = SymbolButton(frame: CGRectMake(0, 0, 150, 50))
symButton.cornerRadius = 30
symButton.ovalColor = UIColor.greenColor()
symButton.setTitle("Assign to ➕", forState: UIControlState.Normal)
