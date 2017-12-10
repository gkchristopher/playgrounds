import UIKit
import PlaygroundSupport

final class CustomView : UIView {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }

        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let backgroundColor = CGColor(colorSpace: colorSpace, components: [1, 1, 1, 1])!

        context.setFillColor(backgroundColor)
        context.fill(bounds)

        let path = CGMutablePath()
        path.addEllipse(in: CGRect(x: 25, y: 25, width: 100, height: 100))

        context.addPath(path)
        context.clip()

        context.setFillColor(CGColor(colorSpace: colorSpace, components: [1, 0, 0, 1])!)
        context.fill(CGRect(x: 50, y: 50, width: 100, height: 100))
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = CustomView(frame: CGRect(x: 0, y: 0, width: 320, height: 320 ))
