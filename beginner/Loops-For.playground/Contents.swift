import UIKit

//fruits: Set = no order
//fruits: Array = order

let fruits: Array = ["Apple", "Pear", "Orange"]
let contacts = ["Adam": 123456789, "James": 987654321, "Amy": 918273645]
let word = "supercalifragilisticexpialidocious"
let halfOpenRange = 1..<5
let closedRange = 1...5

for fruit in fruits {
    print(fruit)
}

for person in contacts {
    print(person.key)
    print(person.value)
}

for letter in word {
    print(letter)
}

for number in halfOpenRange {
    print(number)
}

for _ in halfOpenRange {
    print("Loops is running")
}

for number in closedRange {
    print(number)
}
