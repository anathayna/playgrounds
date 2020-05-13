import UIKit

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    //return n1 * n2
    return operation(n1, n2)
}

func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}

func mult(no1: Int, no2: Int) -> Int {
    return no1 * no2
}

//{ (no1: Int, no2: Int) -> Int in
//    return no1 / no2
//}

calculator(n1: 2, n2: 3, operation: add)

calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2) -> Int in
    return no1 * no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2) in
    return no1 * no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2) in
    no1 * no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2) in no1 * no2})

//calculator(n1: 2, n2: 3, operation: { $0 * $1})

let result = calculator(n1: 2, n2: 3) {$0 * $1}
print(result)
