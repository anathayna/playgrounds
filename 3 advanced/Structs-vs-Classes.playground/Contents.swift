import Foundation

class ClassHero {
    var name: String
    var universe: String
    
    init(name: String, universe: String) {
        self.name = name
        self.universe = universe
    }
}

struct StructHero {
    var name: String
    var universe: String
}

//let hero = ClassHero(name: "Iron Man", universe: "Marvel")
let hero = StructHero(name: "Iron Man", universe: "Marvel")
var anotherHero = hero
anotherHero.name = "The Hulk"

var avengers = [hero, anotherHero]
avengers[0].name = "Thor"

print("hero name: \(hero.name)")
print("another hero name: \(anotherHero.name)")
print("first avenger: \(avengers[0].name)")
