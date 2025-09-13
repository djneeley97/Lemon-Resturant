import UIKit


/*

if condition {
    // code if condition is true
 } else {
    // code if condition is false
 }
 
 */



let waterTemperature = 92

if waterTemperature >= 100 {
    print("The water is boiling!")
} else {
    print("The water is not boiling")
}


var position = 2

if position == 1{
    print("You came first")
} else if position == 2 {
    print("You came second")
} else {
    print("You did not finish in top 2")
}

//
var temp = 69

if temp >= 68 && temp <= 72 {
    print("The temperature is just right")
} else {
    print("The temperature is too hot or cold")
}

//
var mainPower = false
var batteryPower = true

if mainPower == true || batteryPower == true {
    print("I can use my phone")
} else {
    print("Better find a charger")
}
