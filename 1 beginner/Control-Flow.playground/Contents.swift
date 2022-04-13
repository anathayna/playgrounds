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

// for-in

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

// while

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

// extra: range of indexes
/*
 ..< : omits its upper value
 ... : includes both values
 */

var total1 = 0
for i in 0..<4 { // omits 4
    total1 += i
}
print(total1)

var total2 = 0
for i in 0...4 { // includes 4
    print(i)
}
print(total2)
