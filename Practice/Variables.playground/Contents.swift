import UIKit

var greeting = "Hello, playground"
print(greeting)

let day = "Wednesday"
print("Today is \(day)")

let dailyTemperature = 75
print("Today is \(day) and the temperature is \(dailyTemperature) degrees")

var temperature = 80
print("The temperature in the morining is \(temperature) degrees")
temperature = 85
print("The temperature in the afternoon is \(temperature) degrees")

// ----- Game Score -----
print("----- Game Score -----")
let levelScore = 10
var gameScore = 0

gameScore += levelScore
print("The game score is \(gameScore)")

var levelBounsScore = 10.0
levelBounsScore = 20

print("The level bonus score is \(levelBounsScore)")
gameScore += Int(levelBounsScore)
print("The game final score is \(gameScore)")

var name = "Daniel"
var age = "27"
var state = "Ohio"

print("Hello my name is \(name) I am \(age) years old and I live in \(state)")

// ----- Swift DataTypes ----
let dishNmae: String = "Pasta"
var price: Double = 12.99
var inStock: Bool = true
let qty: Int = 10



