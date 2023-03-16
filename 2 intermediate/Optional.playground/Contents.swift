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
