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

(1, "zebra") < (2, "apple")   // 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")    // 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // 4 is equal to 4, and "dog" is equal to "dog"

