/*:
## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
- Name: The user's name
- Age: The user's age
- Number of steps taken today: The number of steps that a user has taken today
- Goal number of steps: The user's goal for number of steps to take each day
- Average heart rate: The user's average heart rate over the last 24 hours
 */
print("constant")
print("A user's name never changes.")
let userName = "The user's name"
print(userName)

print("variable")
print("A user's age changes yearly, doesn't stay the same.")
var userAge = "The User's Age"
print(userAge)

print("variable")
print("Number of steps taken changes throughout the day.")
var numberOfSteps = 675
print(numberOfSteps)

print("constant")
print("A goal doesn't change because it is the desired objective.")
let goalSteps = 66453
print(goalSteps)

print("constant")
print("An average heart rate is the average a heart will pump so if it's the average then it should be the same throughout the last 24 hours.")
let averageHeartRate = 234
print(averageHeartRate)




/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
 */
