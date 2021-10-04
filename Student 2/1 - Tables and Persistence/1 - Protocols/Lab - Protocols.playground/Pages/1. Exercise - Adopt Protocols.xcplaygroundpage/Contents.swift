/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */

import Foundation
class Human: CustomStringConvertible, Equatable, Comparable, Encodable {
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    var description: String {
        return"Human(name: \(name), age: \(age))"
    }
}
let myName = Human(name: "Tyler", age: 24)
let yourName = Human(name: "Megan", age: 21)

//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
print(myName)
print(yourName)

//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
print(myName == yourName)
print(myName != yourName)

//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
let theirName = Human(name: "Spencer", age: 22)
let ourName = Human(name: "Josh", age: 23)
let herName = Human(name: "Sarah", age: 20)

let humans = [myName, yourName, theirName, ourName, herName]
let sortedPeople = humans.sorted(by: <)

//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
import Foundation
let encoder = JSONEncoder()
if let data = try? encoder.encode(myName),
let string = String(data: data, encoding: .utf8) {
    print(string)
}

/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
