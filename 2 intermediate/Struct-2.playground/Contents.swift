import UIKit

struct Town {
  let name: String
  var citizens: [String]
  var resources: [String: Int]

  // init(townName: String, people: [String], stats: [String: Int]) {
  //   name = townName
  //   citizens = people
  //   resources = stats
  // }

  init(name: String, citizens: [String], resources: [String: Int]) {
    self.name = name
    self.citizens = citizens
    self.resources = resources
  }

  func fortify() {
    print("Defences increased!")
  }
}

var anotherTown = Town(name: "Nameless Town", citizens: ["Tom Hanks"], resources: ["Coconuts": 100])

anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)

var ghostTown = Town(name: "Ghosty McGhostface", citizens: [], resources: ["Tumbleweed": 1])
ghostTown.fortify()
