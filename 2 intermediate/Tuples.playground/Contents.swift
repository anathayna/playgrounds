import Foundation

let tuple1 = ("Ana", 24)
let tuple2 = (name: "Ana", age: 24)
let tuple3: (name: String, age: Int)

tuple3 = (name: "Ana", age: 24)

print(tuple1.1)
print(tuple2.name)
print("\(tuple3.name) is \(tuple3.age) years old")

let http404Error = (404, "Not Found") // tuple of type (Int, String)

let (statusCode, statusMessage) = http404Error // decompose a tuple’s contents
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error // ignore parts of the tuple
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)") // access the individual element values in a tuple using index numbers
print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")
