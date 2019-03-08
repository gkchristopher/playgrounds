import Foundation

typealias Result<T> = (T) -> Void

protocol Special {
    func spew()
}

struct MySpecial: Special {
    func spew() {
        print("Spew")
    }
}

func fetch<T: Special>(_ id: String, item: T, completion: Result<T>) {
    print("Calling completion for \(id)")
    completion(item)
}

fetch("Hi!", item: MySpecial()) { (item: MySpecial) in
    item.spew()
}
