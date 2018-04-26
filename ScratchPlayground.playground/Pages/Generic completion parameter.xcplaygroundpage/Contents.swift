import Foundation

//typealias Result<T> = (T) -> Void

protocol Special {
    func spew()
}

struct MySpecial: Special {
    func spew() {
        print("Spew")
    }
}

func fetch<T: Special>(_ id: String, completion: (T) -> Void) {
    print("Calling completion for \(id)")
    let result = MySpecial()
    completion(result)
}

fetch("Hi!") { (item: MySpecial) in
    item.spew()
}
