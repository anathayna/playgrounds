import Foundation

func loveCalculator() {
    let loveScore = Int.random(in: 0...100)
    
    switch loveScore {
    case 81...100:
        print("You love each other like Kanye West loves Kanye")
    case 41..<81:
        print("You go together like Coke and Mentos")
    case ...40:
        print("You'll be forever alone, Banana")
    default:
        print("Error")
    }
    
}

loveCalculator()

var aNumber =  Int(readLine() ?? "")

func dayOfTheWeek(day: Int) {
  
  switch day {
    case 1:
    print("Monday")
    case 2:
    print("Tuesday")
    case 3:
    print("Wednesday")
    case 4:
    print("Thursday")
    case 5:
    print("Friday")
    case 6:
    print("Saturday")
    case 7:
    print("Sunday")
    default:
    print("Error")
  }
  
}

dayOfTheWeek(day: aNumber ?? 0)
