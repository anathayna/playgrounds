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

// getter and setter

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0 // implicit name newValue
        }
    }
    
    /*
     var perimeter: Double {
         get {
             return 3.0 * sideLength
         }
         set(new) { // explicit name
             sideLength = new / 3.0
         }
     }
     */

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

// willSet

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)
