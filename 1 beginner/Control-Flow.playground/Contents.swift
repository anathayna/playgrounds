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
