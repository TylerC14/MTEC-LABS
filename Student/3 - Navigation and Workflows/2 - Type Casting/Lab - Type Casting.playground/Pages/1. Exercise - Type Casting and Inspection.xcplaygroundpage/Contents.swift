/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var stuff: [Any] = [5.0, 2.0, 3.0, 1, 3, 4, "Tyler", "Megan", "Ty", true, false]
print(stuff)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.

for item in stuff {
    if let myInt = item as? Int {
        print("The integer has a value of \(myInt)")
    }
    if let myDouble = item as? Double {
        print("The double has a value of \(myDouble)")
    }
    if let myString = item as? String {
        print("The string has a value of \(myString)")
    }
    if let myBool = item as? Bool {
        print("The boolean has a vlaue of \(myBool)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
let typeDictionary: [String: Any] = ["distance": 5.0, "myName": "Ty", "likesIcecream": true, "milesRan": 3]

for item in typeDictionary {
    if let stringItem = item.value as? String {
        print(item.key, stringItem)
    }
    if let doubleItemmm = item.value as? Double {
        print(item.key, doubleItemmm)
    }
    if let integerItem = item.value as? Int {
        print(item.key, integerItem)
    }
    if let boolItem = item.value as? Bool {
        print(item.key, boolItem)
    }
}

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
for keyValue in typeDictionary {
    if let doubleItems = keyValue.value as? Double {
        total += doubleItems
    }
    if let integerItems = keyValue.value as? Int {
        total += Double(integerItems)
    }
    if let stringItems = keyValue.value as? String {
        total += 1
    }
    if let boolItems = keyValue.value as? Bool {
        if boolItems {
            total += 2
        }
        else {
            total -= 3
        }
    }
}

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
