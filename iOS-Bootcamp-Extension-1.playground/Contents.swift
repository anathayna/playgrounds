import UIKit

extension Double {
    func round(to places: Int) -> Double {
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}

//let myDouble = 3.14159

var myDouble = 3.14159

//myDouble = myDouble * 1000
//myDouble.round()
//myDouble = myDouble / 1000

//myDouble.round(to: 3)
myDouble.round(to: 1)

//myDouble.round()
//let myRoundedDouble = String(format: "%.1f", myDouble)
//print(myRoundedDouble)

let a = 234.234234
a.round(to: 2)
