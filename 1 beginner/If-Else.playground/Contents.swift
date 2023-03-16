import Foundation

func loveCalculator() {
    let loveScore = Int.random(in: 0...100)
    
    if loveScore > 80 {
        print("You love each other like Kanye West loves Kanye")
    } else if loveScore > 40 {
        print("You go together like Coke and Mentos")
    } else {
        print("You'll be forever alone, Banana")
    }
}

loveCalculator()

var aYear =  Int(readLine() ?? "")

func isLeap(year: Int) {
    
    var leap = "NO"
    
    if year % 4 == 0 {
        leap = "YES"
    }
    if year % 100 == 0 {
        leap = "NO"
    }
    if year % 400 == 0 {
        leap = "YES"
    }
    
    print(leap)
    
}

isLeap(year: aYear ?? 0)
