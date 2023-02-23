print("Hello, world!")

// constants & variables

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

// strings with multiple lines

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

// arrays and dictionaries

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

shoppingList.append("blue paint")
print(shoppingList)

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

shoppingList = []
occupations = [:]

// integer bounds

let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8

// floating-point numbers

let floatingPointNumber32bit: Float // precision 6 decimal digits
let floatingPointNumber64bit: Double // precision 15 decimal digits

// type safety and type inference

let meaningOfLife = 42 // inferred to be of type Int
let pi = 3.14159 // inferred to be of type Double
let anotherPi = 3 + 0.14159 // inferred to be of type Double, because swift always chooses Double (rather than Float) when inferring the type of floating-point numbers
