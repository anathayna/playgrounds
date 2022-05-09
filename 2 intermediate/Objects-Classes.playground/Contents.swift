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

// override

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class Circle: NamedShape {
    var radius: Double
    var π: Double = 3.1416

    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return π * (radius * radius) // math.pi
    }

    override func simpleDescription() -> String {
        return "A circle with a radius of \(radius)."
    }
}

let circle = Circle(radius: 5.2, name: "my test circle")
circle.area()
circle.simpleDescription()
