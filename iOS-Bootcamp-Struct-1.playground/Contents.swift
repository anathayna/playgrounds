import UIKit

struct Town {
  let name = "Angelaland"
  var citizens = ["Angela", "Jack Bauer"]
  var resources = ["Grain": 100, "Ore": 42, "Wool": 75]

  func fortify() {
    print("Defences increased!")
  }
}

var myTown = Town()

print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain")

myTown.citizens.append("Keanu Reeves")
print(myTown.citizens.count)

myTown.fortify()
