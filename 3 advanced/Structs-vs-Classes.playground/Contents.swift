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
    
    mutating func reverseName() {
        self.name = String(self.name.reversed())
    }
}

//let hero = ClassHero(name: "Iron Man", universe: "Marvel")
var hero = StructHero(name: "Iron Man", universe: "Marvel")

var anotherHero = hero
anotherHero.name = "The Hulk"

var avengers = [hero, anotherHero]
avengers[0].name = "Thor"

print("hero name: \(hero.name)")
print("another hero name: \(anotherHero.name)")
print("first avenger: \(avengers[0].name)")
print("reverse hero name: \(hero.reverseName())")
