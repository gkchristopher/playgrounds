import UIKit

enum CardColorName: String {
    case grey
    case pink
    case red
    case orange
    case yellow
    case green
    case cyan
    case sky
    case blue
    case purple

    var top: String {
        return "card-\(rawValue)-top"
    }

    var middle: String {
        return "card-\(rawValue)-middle"
    }

    var bottom: String {
        return "card-\(rawValue)-bottom"
    }

    var back: String {
        return "card-\(rawValue)-back"
    }
}

let redName = CardColorName.red
redName.top
