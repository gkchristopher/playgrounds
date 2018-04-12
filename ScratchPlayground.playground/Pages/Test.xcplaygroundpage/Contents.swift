import Foundation

let text = "1"
let nsRange = NSRange(location: 0, length: 1)
let range = Range(nsRange, in: text)!
print(String(range.upperBound == text.endIndex)) //true
//let thisEndIndex = range.upperBound.samePosition(in: "123")
//let isEndIndex = thisEndIndex == "123".endIndex
print(String(describing: range.upperBound.samePosition(in: "12"))) //nil
print(String(describing: text.endIndex.samePosition(in: "12")))//Optional(Swift.String.Index(_compoundOffset: 4, _cache: Swift.String.Index._Cache.character(1)))
