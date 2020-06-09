import UIKit

let defaults = UserDefaults.standard
let array = [1, 2, 3]
let dictionary = ["name": "ana"]
let dictionaryKey = "myDictionary"

defaults.set(0.24, forKey: "Volume")
defaults.set(true, forKey: "MusicOn")
defaults.set("Ana", forKey: "PlayerNumberOne")
defaults.set(Date(), forKey: "AppLastOpenedByUser")
defaults.set(array, forKey: "myArray")
defaults.set(dictionary, forKey: dictionaryKey)

let volume = defaults.float(forKey: "Volume")
let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser")
let myArray = defaults.array(forKey: "myArray") as! [Int]
let myDictionary = defaults.dictionary(forKey: dictionaryKey)
