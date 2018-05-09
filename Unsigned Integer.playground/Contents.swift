import Foundation

var a: UInt8 = 1
var b: UInt8 = 0xAA
var c = UInt8("F6", radix: 16)!

a = 0x3
c = ~a

print(String(a, radix: 2))
print(String(b, radix: 2))
print("--------")
print(String(c, radix: 2))
