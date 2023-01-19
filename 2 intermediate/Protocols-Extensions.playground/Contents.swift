import Foundation

// protocol

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

// adopted in classes, enumerations and structures

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

// extension

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)

extension Double {
    var absoluteValue: Double {
        if self > 0.0 {
            return self
        }
        else {
            return -1 * self
        }
    }
}

print((-4.0).absoluteValue)

let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)

// methods outside the protocol definition aren’t available
// this means that you can’t accidentally access methods or properties that the class implements in addition to its protocol conformance
// print(protocolValue.anotherProperty)
