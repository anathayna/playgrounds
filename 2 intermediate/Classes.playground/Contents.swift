import UIKit

class Enemy {
  var health = 100
  var attackStrength = 10

  func move() {
    print("Walk forwards")
  }

  func attack() {
    print("Land a hit, does \(attackStrength) damage")
  }
}

class Dragon : Enemy {
  var wingSpan = 2

  func talk(speech: String) {
    print("Says: \(speech)")
  }

  override func move() {
    print("Fly forwards")
  }

  override func attack() {
    super.attack()
    print("Spits fire, does 10 damage")
  }
}

let skeleton = Enemy()
print(skeleton.health)
skeleton.move()
skeleton.attack()

let dragon = Dragon()
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane!")
dragon.move()
dragon.attack()
