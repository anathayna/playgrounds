print("Hello, world!")

/*
 swift book: simple values
 */

var myVariable = 42
myVariable = 50
let myConstant = 42

// type

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let constantWithExplicitType: Float = 4

// convertion

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

// include values in strings

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let name = "Anne"
let calculation = "calculation result: \(9.9/3.3)"
let greeting = "Hello! I'm \(name)"


/*
 iOS bootcamp
 */

import Foundation

let secondsInAnHour = 3600

print(secondsInAnHour)
