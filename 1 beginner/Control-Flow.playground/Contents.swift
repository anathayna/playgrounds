import Foundation

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// optional

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName1: String? = "John Appleseed"
var greeting1 = "Hello!"
if let name = optionalName1 {
    greeting1 = "Hello, \(name)"
}

var optionalName2: String? = nil
var greeting2 = "Hello!"
if let name = optionalName2 {
    greeting2 = "Hello, \(name)"
} else {
    greeting2 = "Hello, what's your name?"
}

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

// switch case

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
