import Foundation

func greet1(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet1(person: "Bob", day: "Tuesday")

func greet2(person: String, lunch: String) -> String {
    return "Hello \(person), today’s lunch special is \(lunch)."
}
greet2(person: "Bob", lunch: "japanese food")

func greet3(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet3("John", on: "Wednesday")

// tuple

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)
print(statistics.max)
print(statistics.1)
print(statistics.min)
print(statistics.0)

// nested (recursive)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

// first-class type

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// function as arguments

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)
