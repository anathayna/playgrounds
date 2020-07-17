import Foundation

let touple1 = ("Ana", 24)
let touple2 = (name: "Ana", age: 24)
let touple3: (name: String, age: Int)

touple3 = (name: "Ana", age: 24)

print(touple1.1)
print(touple2.name)
print("\(touple3.name) is \(touple3.age) years old")
