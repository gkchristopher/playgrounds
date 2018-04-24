import Foundation

class Example: NSObject {
    @objc let name: String

    init(name: String) {
        self.name = name
    }
}

let nameFilter = NSPredicate(format: "%K ==[c] %@", "Self.name", "boo")
var names = [Example(name: "berry"), Example(name: "Boo")] as NSArray
names.filtered(using: nameFilter)

let stringFilter = NSPredicate(format: "SELF ==[c] %@", "one")
let strings = ["one", "two", "three"] as NSArray
strings.filtered(using: stringFilter)

//let filteredNames = names.filter { $0.name.hasPrefix("b") }
//filteredNames.forEach { print($0.name) }
