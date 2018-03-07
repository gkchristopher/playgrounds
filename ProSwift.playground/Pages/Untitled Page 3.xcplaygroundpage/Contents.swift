extension BinaryInteger {
    func clamp(low: Self, high: Self) -> Self {
        return min(max(self, low), high)
    }
}

2.clamp(low: 0, high: 1)


extension Equatable {
    func matches(array: [Self]) -> Bool {
        for item in array {
            if item != self {
                return false
            }
        }
        return true
    }
}

2.matches(array: [2, 2, 3])


extension Comparable {
    func lessThan(array: [Self]) -> Bool {
        for item in array {
            if item <= self {
                return false
            }
        }
        return true
    }
}

5.lessThan(array: [6, 7, 8])
5.lessThan(array: [5, 6, 7])
"cat".lessThan(array: ["dog", "fish", "gorilla"])

extension Collection where Iterator.Element: Equatable {
    func myContains(element: Iterator.Element) -> Bool {
        for item in self {
            if item == element {
                return true
            }
        }
        return false
    }
}

[1, 2, 3].myContains(element: 3)
