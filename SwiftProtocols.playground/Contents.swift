//: Playground - noun: a place where people can play

protocol Bird: BooleanType {
    var name: String { get }
    var canFly: Bool { get }
}

extension BooleanType where Self: Bird {
    var boolValue: Bool {
        return canFly
    }
}

protocol Flyable {
    var airspeedVelocity: Double { get }
}

struct FlappyBird: Bird, Flyable {
    let name: String
    let flappyAmplitude: Double
    let flappyFrequency: Double
    
    var airspeedVelocity: Double {
        return 3 * flappyFrequency * flappyAmplitude
    }
}

struct Penguin: Bird {
    let name: String
    let canFly = false
}

struct SwiftBird: Bird, Flyable {
    var name: String { return "Swift \(version)" }
    let version: Double
    
    // Swift is FAST!
    var airspeedVelocity: Double { return 2000.0 }
}

extension Bird where Self: Flyable {
    var canFly: Bool { return true }
}

enum UnladenSwallow: Bird, Flyable {
    case African
    case European
    case Unknown
    
    var name: String {
        switch self {
        case .African:
            return "African"
        case .European:
            return "European"
        case .Unknown:
            return "What do you mean? Aftican or European?"
        }
    }
    
    var airspeedVelocity: Double {
        switch self {
        case .African:
            return 10.0
        case .European:
            return 9.9
        case .Unknown:
            fatalError("You are thrown from the bridge of death!")
        }
    }
}

extension CollectionType {
    func skip(skip: Int) -> [Generator.Element] {
        guard skip != 0 else { return [] }
        
        var index = self.startIndex
        var result: [Generator.Element] = []
        var i = 0
        repeat {
            if i % skip != 0 {
                result.append(self[index])
            }
            index = index.successor()
            i++
        } while (index != self.endIndex)
        
        return result
    }
}

let bunchaBirds: [Bird] = [UnladenSwallow.African,
                            UnladenSwallow.European,
                            UnladenSwallow.Unknown,
                            Penguin(name: "King Penguin"),
                            SwiftBird(version: 2.0),
                            FlappyBird(name: "Felipe", flappyAmplitude: 3.0, flappyFrequency: 20.0)]

bunchaBirds.skip(0)

if UnladenSwallow.African {
    print("I can fly!")
} else {
    print("Guess I'll just sit here :[")
}

//let example = ["frog", "pants"]
print(["frog", "pants"].map { $0.characters.count }.reduce(0) { $0 + $1 })


var numbers = [20, 19, 7, 12]
let mappedNumbers = numbers.map({ num in 3})
print(mappedNumbers)
//mappedNumbers.reduce(<#T##initial: T##T#>, combine: <#T##(T, Self.Generator.Element) -> T#>)



func topSpeed<T: CollectionType where T.Generator.Element == Flyable>(collection: T) -> Double {
    return collection.map { $0.airspeedVelocity }.reduce(0) { max($0, $1)}
}

func combinedSpeed<T: CollectionType where T.Generator.Element == Flyable>(c: T) -> Double {
    return c.map { $0.airspeedVelocity }.reduce(0) { $0 + $1 }
}

let flyingBirds: [Flyable] = [UnladenSwallow.African, UnladenSwallow.European, SwiftBird(version: 2.0)]

topSpeed(flyingBirds)
combinedSpeed(flyingBirds)


import UIKit
extension UIColor {
    enum myColors: String {
        case myColor = "❤️"
    }
}

