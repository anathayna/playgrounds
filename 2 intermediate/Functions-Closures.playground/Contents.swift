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
