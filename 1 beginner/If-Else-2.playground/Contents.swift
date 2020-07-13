import UIKit

var aYear =  Int(readLine()!)!

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

isLeap(year: aYear)
