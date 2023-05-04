import Foundation

// assignment operator

let b = 10
var a = 5
a = b

let (x, y) = (1, 2)

/*
 if x = y {
     // This isn't valid, because x = y doesn't return a value.
 }
 */

// arithmetic operators

1 + 2
5 - 3
2 * 3
10.0 / 2.5

"hello, " + "world"

// remainder operator -> a = (b x some multiplier) + remainder

9 % 4
-9 % 4

// unary minus/plus operator

let three = 3
let minusThree = -three
let plusThree = -minusThree   // "minus minus three" -> - - = +

let minusSix = -6
let alsoMinusSix = +minusSix // doesn’t actually do anything

// compound assignment operators

var c = 1
c += 2 // shorthand -> a = a + 2

/*
 let b = a += 2 // don’t return a value
 */

// comparison operators

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

let name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}

// ("blue", false) < ("purple", true)  // can't compare boolean values
("blue", -1) < ("purple", 1)  // left-to-right comparison
(1, "zebra") < (2, "apple")   // 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")    // 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // 4 is equal to 4, and "dog" is equal to "dog"

// ternary conditional operator

let contentHeightTernary = 40
let hasHeaderTernary = true
let rowHeightTernary = contentHeightTernary + (hasHeaderTernary ? 50 : 20)

/*
 question ? answer1 : answer2
 
 if question {
     answer1
 } else {
     answer2
 }
 */

let contentHeight = 40
let hasHeader = true
let rowHeight: Int
if hasHeader {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}

// nil-coalescing operator

let defaultColorName = "red"
var userDefinedColorName: String?

var colorNameToUse = userDefinedColorName ?? defaultColorName // shorthand -> a != nil ? a! : b

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

// range operators

for index in 1...5 { // closed range operator
    print("\(index) times 5 is \(index * 5)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count { // half-open range operator
    print("Person \(i + 1) is called \(names[i])")
}

for name in names[2...] { // one-sided ranges - closed
    print(name)
}

for name in names[...2] {
    print(name)
}

for name in names[..<2] { // one-sided ranges - half-open
    print(name)
}

let range = ...5 // iterate a one-sided range that omits its final value
range.contains(7)
range.contains(4)
range.contains(-1)

// logical operators

let allowedEntry = false
if !allowedEntry { // logical not operator
    print("ACCESS DENIED")
}

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan { // logical and operator
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword { // logical or operator
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword { // combining logical operators
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword { // explicit parentheses
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
