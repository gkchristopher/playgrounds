import UIKit
import PlaygroundSupport

final class CustomView : UIView {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }

        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let backgroundColor = CGColor(colorSpace: colorSpace, components: [1, 1, 1, 1])!

        context.setFillColor(backgroundColor)
        context.fill(bounds)

        context.translateBy(x: bounds.midX, y: bounds.midY)
        context.scaleBy(x: 0.5, y: 0.5)
        context.translateBy(x: -bounds.midX, y: -bounds.midY)

        drawGrid(context)

        context.setFillColor(CGColor(colorSpace: colorSpace, components: [0, 0, 1, 1])!)
        context.fill(CGRect(x: 60, y: 60, width: 200, height: 200))

        context.translateBy(x: bounds.midX, y: bounds.midY)
        context.rotate(by: .pi / 8)
        context.translateBy(x: -bounds.midX, y: -bounds.midY)

        drawGrid(context)
    }

    func drawGrid(_ context: CGContext) {
        context.saveGState()

        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let color = CGColor(colorSpace: colorSpace, components: [0, 0, 0, 0.2])!
        context.setStrokeColor(color)
        context.setLineWidth(2)

        // Stroke the border
        context.stroke(bounds)

        // Draw a line every 20px
        let increment: CGFloat = 20

        for x in 1..<Int(bounds.height / increment) {
            // Vertical line
            context.move(to: CGPoint(x: CGFloat(x) * increment, y: 0))
            context.addLine(to: CGPoint(x: CGFloat(x) * increment, y: bounds.height))
        }

        for y in 1..<Int(bounds.width / increment) {
            // Horizontal line
            context.move(to: CGPoint(x: 0, y: CGFloat(y) * increment))
            context.addLine(to: CGPoint(x: bounds.width, y: CGFloat(y) * increment))
        }

        // Stroke grid
        context.strokePath()

        // Draw top left red square
        context.setFillColor(CGColor(colorSpace: colorSpace, components: [1, 0, 0, 0.5])!)
        context.fill(CGRect(x: 0, y: 0, width: increment, height: increment))

        context.restoreGState()
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = CustomView(frame: CGRect(x: 0, y: 0, width: 320, height: 320 ))

