//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("Mi nombre :V")

// Arrays

var arrayUdemy = [3.87, 7.1, 8.9];

arrayUdemy.remove(at: 1)

arrayUdemy.append(arrayUdemy[0] * arrayUdemy[1])

var array2 = [String]()

//Dictionaries

var dictionaryUdemy = ["id": "1", "name":"robert"];

print(dictionaryUdemy["id"]!)
print(dictionaryUdemy["name"]!)

print(dictionaryUdemy.count)

dictionaryUdemy["last-name"] = "Robertson"

print(dictionaryUdemy)

dictionaryUdemy.removeValue(forKey: "id")

var dictionary2 = [String: String]()

dictionary2["firstKey"] = "FirstValue"

print(dictionary2)

let menu = ["pizza" : 10.99, "ice-cream" : 4.99, "salad" : 7.99]

print("The cost of my meal is \(menu["pizza"]! + menu["salad"]!)")

//Challenge if statements username/password 
var username = "Lucho"
var password = "12345"

if username == "Lucho" && password == "123456" {
    print("Welcome to the app \(username)")
} else if username == "Lucho" && password != "123456" {
    print("\(username) your password is incorrect, please try again")
} else if username != "Lucho" && password == "123456" {
    print("\(username) your username is incorrect, please try again")
} else {
    print("Wrond Username and Password")
}

//Generate a random number.

let randFinger = arc4random_uniform(6)


// While loop.

var mult = 1

while (mult<=20) {
    print(7*mult)
    mult += 1
}

var arrWhile = [7, 23, 45, 70, 98, 0]
var k = 0
while (k < arrWhile.count) {
    arrWhile[k] += 1
    k += 1
}

print(arrWhile)

//For loop

let arrayFor = ["Eliza", "Julian", "Luis Alberto", "Luz Elena"]

for name in arrayFor {
    print("Hi there \(name)!")
}

var arrHalve : [Double] = [8, 7, 19, 28]

for (index, data) in arrHalve.enumerated() {
    arrHalve[index] = data / 2
}
print(arrHalve)


//Classes and Objects

class Ghost {
    var isAlive = true
    
    var strenght = 0
    
    func kill() {
        isAlive = false
    }
    
    func isStrong() -> Bool {
        if (strenght > 10) {
            return true
        } else {
            return false
        }
    }
}

var pinky = Ghost()

pinky.isAlive
pinky.isStrong()

pinky.strenght = 20

pinky.isStrong()

print(pinky.isAlive)
print(pinky.strenght)

print(pinky.isStrong())

pinky.kill()

print(pinky.isAlive)

//Optionals

var number : Int?

print(number)

let userEnteredText = "5"

let userEnteredInteger = Int(userEnteredText)

if let variableAsigned = userEnteredInteger {
    print(variableAsigned * 7)
} else {
    print("The user entered text is not a number")
}


