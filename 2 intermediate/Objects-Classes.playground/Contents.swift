import Foundation

// class

class Shape {
    var numberOfSides1 = 0
    let numberOfSides2 = 0
    
    func simpleDescription1() -> String {
        return "A shape with \(numberOfSides1) sides."
    }
    
    func simpleDescription2() -> String {
        return "A shape with \(numberOfSides2) sides."
    }
}

// instance

var shape = Shape()
shape.numberOfSides1 = 7
var shapeDescription = shape.simpleDescription1()
