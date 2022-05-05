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

var shape = Shape() // instance
shape.numberOfSides1 = 7
var shapeDescription = shape.simpleDescription1()

// init

class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var namedShape = NamedShape(name: "etc")
namedShape.numberOfSides = 7
var shapeDescription2 = namedShape.simpleDescription()
