import UIKit


extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}
var name = "Hello, playground"
let letter = name[3]
