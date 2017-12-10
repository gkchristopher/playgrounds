//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let user = "username"
let password = "password"

let credentialData = "\(user):\(password)".dataUsingEncoding(NSUTF8StringEncoding)
let base64Credentials = credentialData?.base64EncodedStringWithOptions([])

let c = CollectionOfOne("Hello")

print(str[str.startIndex.advancedBy(2)...str.startIndex.advancedBy(8)])

"Hello".characters.count

var empty = EmptyCollection<String>()
empty.count

dump(credentialData)

/**
# Lists

You can apply *italic*, **bold**, or `code` inline styles.

## Unordered Lists

- Lists are great,
- but perhaps don't nest
- Sub-list formatting

- isn't the best.

## Ordered Lists

1. Ordered lists, too
2. for things that are sorted;
3. Arabic numerals
4. are the only kind supported.
*/
func testDoc() {
    
}

/// Returns the magnitude of a vector in three dimensions
/// from the given components.
///
/// - Parameters:
///     - x: The *x* component of the vector.
///     - y: The *y* component of the vector.
///     - z: The *z* component of the vector.
func magnitude3D(x: Double, y: Double, z: Double) -> Double {
    return sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2))
}

/**
The area of the `Shape` instance.

Computation depends on the shape of the instance.
For a triangle, `area` will be equivalent to:

```
let height = triangle.calculateHeight()
let area = triangle.base * height / 2
```
*/
var area: CGFloat { get {return 0} }

import Foundation

/// 🚲 A two-wheeled, human-powered mode of transportation.
class Bicycle {
    /**
     Frame and construction style.
     
     - Road: For streets or trails.
     - Touring: For long journeys.
     - Cruiser: For casual trips around town.
     - Hybrid: For general-purpose transportation.
     */
    enum Style {
        case Road, Touring, Cruiser, Hybrid
    }
    
    /**
     Mechanism for converting pedal power into motion.
     
     - Fixed: A single, fixed gear.
     - Freewheel: A variable-speed, disengageable gear.
     */
    enum Gearing {
        case Fixed
        case Freewheel(speeds: Int)
    }
    
    /**
     Hardware used for steering.
     
     - Riser: A casual handlebar.
     - Café: An upright handlebar.
     - Drop: A classic handlebar.
     - Bullhorn: A powerful handlebar.
     */
    enum Handlebar {
        case Riser, Café, Drop, Bullhorn
    }
    
    /// The style of the bicycle.
    let style: Style
    
    /// The gearing of the bicycle.
    let gearing: Gearing
    
    /// The handlebar of the bicycle.
    let handlebar: Handlebar
    
    /// The size of the frame, in centimeters.
    let frameSize: Int
    
    /// The number of trips travelled by the bicycle.
    private(set) var numberOfTrips: Int
    
    /// The total distance travelled by the bicycle, in meters.
    private(set) var distanceTravelled: Double
    
    /**
     Initializes a new bicycle with the provided parts and specifications.
     
     - Parameters:
     - style: The style of the bicycle
     - gearing: The gearing of the bicycle
     - handlebar: The handlebar of the bicycle
     - frameSize: The frame size of the bicycle, in centimeters
     
     - Returns: A beautiful, brand-new bicycle, custom built
     just for you.
     */
    init(style: Style, gearing: Gearing, handlebar: Handlebar, frameSize centimeters: Int) {
        self.style = style
        self.gearing = gearing
        self.handlebar = handlebar
        self.frameSize = centimeters
        
        self.numberOfTrips = 0
        self.distanceTravelled = 0
    }
    
    /**
     Take a bike out for a spin.
     
     - Parameter meters: The distance to travel in meters.
     */
    func travel(distance meters: Double) {
        if meters > 0 {
            distanceTravelled += meters
            ++numberOfTrips
        }
    }
}

let bicycle = Bicycle(style: .Cruiser, gearing: .Fixed, handlebar: .Riser, frameSize: 46)


