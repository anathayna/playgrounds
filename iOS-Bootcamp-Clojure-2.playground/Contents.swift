import UIKit

let array = [6,2,3,9,4,1]

func addOne(n1: Int) -> Int {
    return n1 + 1
}

array.map(addOne)

//{ addOne(n1: Int) -> Int in
//    return n1 + 1
//}

//array.map({ addOne(n1: Int) -> Int in
//    return n1 + 1
//})

//array.map({ addOne(n1) in
//    return n1 + 1
//})

//array.map({ addOne(n1) in
//    n1 + 1
//})

//array.map({ addOne(n1) in n1 + 1 })

array.map({ $0 + 1 })
array.map{ $0 + 1 }
print(array.map{ $0 + 1 })

let newArray = array.map{"\($0)"}
print(newArray)
