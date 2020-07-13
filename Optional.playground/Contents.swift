import UIKit

var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {

  let a = studentsAndScores["Amy"]!
  let b = studentsAndScores["James"]!
  let c = studentsAndScores["Helen"]!
  
  var temp = 0
    
  if a > temp {
    temp = a
  }
    
  if b > temp {
    temp = b
  }
  
  if c > temp {
    temp = c
  }
  
  print(temp)
   
}

highestScore(scores: studentsAndScores)
