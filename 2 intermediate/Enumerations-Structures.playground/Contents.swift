import Foundation

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace" // explicitly given a raw value = 1
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue

let jack = Rank.jack
let jackRawValue = jack.rawValue

func comparesRank(a: Rank, b: Rank) -> Bool {
    return a.rawValue > b.rawValue
}

comparesRank(a: jack, b: ace)

// rawValue

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

// case values of an enumeration are actual values

enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "red"
        }
    }
}

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()

// values as part of the declaration

enum ServerResponse {
    case result(String, String, String)
    case failure(String)
    case noContent(String)
}

let success = ServerResponse.result("6:00 am", "6:30 pm", "12:00 pm")
let failure = ServerResponse.failure("Out of cheese.")
let noContent = ServerResponse.noContent("¯\\_(ツ)_//¯")

switch success {
case let .result(sunrise, sunset, daylight): // has the same raw value
    print("Sunrise is at \(sunrise), sunset is at \(sunset), and total daylight is \(daylight).")
case let .failure(message):
    print("Failure...  \(message)")
case let .noContent(message):
    print("No content... \(message)")
}
