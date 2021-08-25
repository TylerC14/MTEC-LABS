import UIKit





//Palendrom Challenge - Create a function that takes in 1 string and returns true if it is a palendrome and false if it is not a palendrome.

func checkPalindrome(string3: String) -> Bool {
    return string3.reversed() == string3.reversed()
}
let result = checkPalindrome(string3: "wow")
print(result)

//answer

func checkForPalendrome(string: String) -> Bool {
    return string == String(string.reversed())
}


