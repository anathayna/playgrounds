import Foundation

var pizzaInInches: Int = 12 {
    willSet {
        print(pizzaInInches)
        print(newValue)
    }
    didSet {
        print(oldValue)
        print(pizzaInInches)
    }
}
var numberOfPeople: Int = 6
let slicesPerPerson: Int = 3

var numberOfSlices: Int {
    get { return pizzaInInches - 4 }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfSlices / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

