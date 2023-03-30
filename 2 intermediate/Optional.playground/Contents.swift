import Foundation

var studentsAndScores = ["Amy": Int(readLine() ?? ""),
                         "James": Int(readLine() ?? ""),
                         "Helen": Int(readLine() ?? "")]

func highestScore(scores: [String: Int?]) {
    
    guard let a = studentsAndScores["Amy"] else { return }
    guard let b = studentsAndScores["James"] else { return }
    guard let c = studentsAndScores["Helen"] else { return }
    
    var temp = 0
    
    if let amy = a, amy > temp { temp = amy }
    if let james = b, james > temp { temp = james }
    if let helen = c, helen > temp { temp = helen }
    
    print(temp)
    
}

highestScore(scores: studentsAndScores)

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// nil

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String? // is automatically set to nil


// if statements

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

// force unwrapping

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

// optional binding

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}

let myNumber = Int(possibleNumber)

if let myNumber = myNumber {
    print("My number is \(myNumber)")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

// implicitly unwrapped

let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString

let optionalString = assumedString // optionalString is "String?" and assumedString isn't force-unwrapped

if assumedString != nil {
    print(assumedString!)
}

if let definiteString = assumedString {
    print(definiteString)
}