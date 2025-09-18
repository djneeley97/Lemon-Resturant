import UIKit

let dishes = ["Pizza","Pasta","Salad"]

print(dishes[1])

var orders = [String]()
orders.append("Soup")
orders.append("Burger")
print(orders.count)

let desserts = ["Cake","Ice Cream","Brownie","Cookie"]

print(desserts[2])


// Dictionaries
// Define with prices
let menuPrices: [String:Double] = [
    "Pizza":12.99,
    "Salad":15.00,
    "Pasta":11.99
]
// Access value using a key
print(menuPrices["Pizza"]!)


//Eample 2
var stock: [String:Double] = [
    "Burger":5.00,
    "Soup":4.00
]

stock["Soup"] = 4.5

print(stock)

// Create a dictionary for drinks and their prices
let drinks: [String: Double] = [
    "Coffee": 3.50,
    "Tea": 2.25,
    "Juice": 4.00
]

print(drinks["Tea"]!)

// Dictionary with all values

var ingredients = ["Tomato":3, "Chese":2, "Pepperoni":10, "Mushroooms":8]

//for-in loop
for(item,qty) in ingredients.sorted(by: {$0.value < $1.value}){
    print("\(item) : \(qty)")
}

for dish in dishes{
    print("\(dish)")
}

// --------------------------------------------

let meals = ["Burger": 7.99, "Salad": 5.99]
for (meal, price) in meals {
    print("\(meal): $\(price)")
}

let prices2 = [8.0, 12.5, 7.0, 15.0]
for price in prices2 {
    print("$\(price)")
}

let premium = prices2.filter{$0 > 10}
print(premium)

let menu3 = ["Veggie Salad", "Steak", "Fruit Bowl", "Chicken"]

let veggie = menu3.filter{ $0.contains("Veggie") || $0.contains("Fruit")}
for premium in menu3 {
    print("\(veggie)")
}
