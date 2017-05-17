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

let randFinger = arc4random(6)