import UIKit
import PlaygroundSupport

final class CustomView : UIView {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }

        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let backgroundColor = CGColor(colorSpace: colorSpace, components: [1, 1, 1, 1])!

        context.setFillColor(backgroundColor)
        context.fill(bounds)

//        context.setTextDrawingMode(.stroke)
//        context.setLineWidth(4)

        let string = "Hello World"
        let attributes: [NSAttributedStringKey: Any] = [
            NSAttributedStringKey.font: UIFont.systemFont(ofSize: 40),
            NSAttributedStringKey.foregroundColor: UIColor.blue
        ]

//        (string as NSString).draw(at: CGPoint(x: 20, y: 20), withAttributes: attributes)

        let attributedString = NSAttributedString(string: string, attributes: attributes)
        attributedString.draw(at: CGPoint(x: 20, y: 20))
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = CustomView(frame: CGRect(x: 0, y: 0, width: 320, height: 320 ))
