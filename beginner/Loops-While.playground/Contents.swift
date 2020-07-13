import UIKit

let fruits: Array = ["Apple", "Pear", "Orange"]
let contacts = ["Adam": 123456789, "James": 987654321, "Amy": 918273645]
let word = "supercalifragilisticexpialidocious"
let halfOpenRange = 1..<5
let closedRange = 1...5

var now = Date().timeIntervalSince1970
let oneSecondFromNow = now + 1

//while 3 > 2 - infinite loop

while now < oneSecondFromNow {
    now = Date().timeIntervalSince1970
    print("waiting...")
}
