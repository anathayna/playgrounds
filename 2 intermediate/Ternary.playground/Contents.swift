import UIKit

let question = true
let answer1 = 1
let answer2 = 2

if question {
    answer1
} else {
    answer2
}

question ? answer1 : answer2

let contentHeight = 40
let hasHeader = true

let rowHeight = contentHeight + (hasHeader ? 50 : 20)

let rowHeight2: Int
if hasHeader {
    rowHeight2 = contentHeight + 50
} else {
    rowHeight2 = contentHeight + 20
}
