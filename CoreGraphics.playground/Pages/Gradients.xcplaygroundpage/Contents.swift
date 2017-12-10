//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

final class CustomView : UIView {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }

        let colorSpace = CGColorSpaceCreateDeviceRGB()

        context.setFillColor(CGColor(colorSpace: colorSpace, components: [0, 1, 0, 1])!)
        context.fill(rect)

        let colors = [
            CGColor(colorSpace: colorSpace, components: [0.2, 0, 1, 1])!,
            CGColor(colorSpace: colorSpace, components: [0, 1, 0.5, 1])!
            ] as CFArray
        let gradient = CGGradient(colorsSpace: nil, colors: colors, locations: [0, 1])!
        context.drawLinearGradient(gradient, start: CGPoint(x: 0, y: 0), end: CGPoint(x: 0, y: 320), options: [])

        context.setFillColor(UIColor.blue.cgColor)
        context.fill(rect.insetBy(dx: 64, dy: 64))

        context.setFillColor(UIColor.red.cgColor)
        context.addEllipse(in: rect.insetBy(dx: 128, dy: 128))
        context.fillPath()

        context.drawRadialGradient(gradient, startCenter: center, startRadius: 50, endCenter: CGPoint(x: 40, y: 40), endRadius: bounds.midX - 128, options: [])
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = CustomView(frame: CGRect(x: 0, y: 0, width: 320, height: 320 ))
