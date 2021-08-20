/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking on the variable name.
 */
var firstDecimal = 0.1
var secondDecimal = 2.0

//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse = true
print("it does not because the values are totally separate, one is a double and the other is a boolean")

//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.

print("It cannot because a double is a different value from a string, a string uses text, and a double represents a decimal.")


//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var number = 5
print("It does not because even though the decimal is a number its not a whole number like the integer")

/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
