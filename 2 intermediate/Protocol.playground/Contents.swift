import UIKit

protocol CanFly {
    func fly()
}

class Bird {
    
//    func fly() {
//        print("The birds takes off into the air.")
//    }
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
    
//    func fly() {
//        print("The bird flaps its wings and lifts off into the sky")
//    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents")
    }
}

class Peguin: Bird {
    func swin() {
        print("The penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air")
    }
}

let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let MyPeguin = Peguin()
MyPeguin.layEgg()
MyPeguin.swin()
//MyPeguin.fly()

let myPlane = Airplane()
//myPlane.layEgg()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
