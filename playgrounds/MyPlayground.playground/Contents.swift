//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

str.appendContentsOf("fun")
str.append(Character("c"))

var name = "me"
name = "you"

var animal:String = "dog"
animal.localizedCapitalizedString

var n = 3
n += (1 * 5)

var i:Float = 5
var j:Float = 3


var s = i / j

var x:Int = 2

String(format: "happy %@", "me")

"happy \(animal)"

var a = 3.5
var b = 4
var c = a * Double(b)

"\(a) times \(b) equals \(Int(c))"

var arr = ["cat", "dog"]
arr.append("giraffe")
arr.append(arr.removeFirst())


for a in arr {
    print(a)
}

var g = [2, 3.0, "ooo"]
var t:[String] = ["2", "2"]

var dict = [ "height": 2, "width": 4 ]

var h = dict["height"]

dict["depth"] = 3

dict

dict.removeValueForKey("height")

var m = "hi \(h!)"

var arr2 = [2, 4, 6, 8]
arr2.removeFirst()
arr2.append(10)


if true {
    print(1)
}

if arr2.count == 2 {
    print("ok")
}
else if arr2.count == 4 {
    print("fine")
}

for i in 1..<11 {
    print(i*5)
}

for i in 5.stride(to: 51, by: 5) {
    print(i)
}

for i in [1,5,2,5,6] {
    print(i)
}

for (i, v) in [1,2,3,4].enumerate() {
    print("\(i), \(v)")
}

var arr3 = [1.0, 2.0, 3.0, 4.0]
for (i, v) in arr3.enumerate() {
    arr3[i] = v / 2;
}

print(arr3)

var counter = 0
while counter < 5 {
    print(counter)
    counter += 1
}












