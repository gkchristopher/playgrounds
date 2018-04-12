import Foundation

class Node {
    let value: Character?
    var children: [Character: Node] = [:]

    init(value: Character?) {
        self.value = value
    }

    func add(child: Node) {
        children[child.value!] = child
    }
}

struct Trie {
    var root: Node

    init(data: [String]) {
        root = Node(value: nil)
        var currentNode = root

        for item in data {
            item.forEach { ch in
                if let childNode = currentNode.children[ch] {
                    print("walking to next child for \(ch)")
                    currentNode = childNode
                } else {
                    let itemNode = Node(value: ch)
                    print("adding child for \(ch)")
                    currentNode.add(child: itemNode)
                    currentNode = itemNode
                }
            }
            currentNode = root
        }
    }

//    static func prettyPrint(root: Node, appendTo: String = "") {
//        var result = ""
//        guard !root.children.isEmpty else {
//            print(result)
//            return
//        }
//
//        root.children.forEach { (child) in
//            result.append(child.key)
//            Trie.prettyPrint(root: child.value)
//        }
//    }
}

let trie = Trie(data: ["hello", "help"])
//Trie.prettyPrint(root: trie.root)
