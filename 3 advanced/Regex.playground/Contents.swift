import UIKit

public func validate(text: String, regex: String) -> Bool {
    do {
        if try NSRegularExpression(pattern: regex)
            .firstMatch(in: text, options: [], range: NSRange(location: 0, length: text.count)) == nil {
            return false
        }
        return true
    } catch let error {
        print("invalid regex: \(error.localizedDescription)")
        return false
    }
}

// "^(?=.{8})(?=.*?[a-zA-Z])(?=.*?[0-9])"
// "([a-z].*[A-Z])|([A-Z].*[a-z])"
// "[_\\W]"

validate(text: "Ab123456", regex: "^(?=.{8})(?=.*?[a-zA-Z])(?=.*?[0-9])")
