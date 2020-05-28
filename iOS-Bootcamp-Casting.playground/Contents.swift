import UIKit

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water")
    }
}

let ana = Human(n: "Ana Thayna")
let boco = Human(n: "Bocó")
let dori = Fish(n: "Dori")

let neighbours = [ana, boco, dori]
let neighbours1 = neighbours[0]

let myDouble = 0.0
let myDoubleAsInt = Int(myDouble)

if neighbours[2] is Human {
    print("First Neighbour is a Human")
}

func findDori(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            
            let fish = animal as! Fish
            fish.breatheUnderWater()
            
            let animalFish = fish as Animal
        }
    }
}

findDori(from: neighbours)

if let fish = neighbours[1] as? Fish{
    fish.breatheUnderWater()
} else {
    print("casting fail :(")
}

//or fish?.breatheUnderWater()

let num: NSNumber = 12
let word: NSString = "abc"
//let nemo = Fish()

let neighbours3: [Any] = [ana, boco, dori, num]
//let neighbours4: [AnyObject] = [ana, boco, dori, num]
let neighbours5: [NSObject] = [num, word]
