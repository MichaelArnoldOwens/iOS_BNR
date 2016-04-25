//: Playground - noun: a place where people can play

import UIKit

// Variable declaration
var str = "Hello, playground" // Literal value (literals)

// String override
str = "Hello, Swift"

// Constant declaration
let constStr = str

var nextYear: Int // Apple recommends this unless you have a reason to use something different
var bodyTemp: Float // 32-bit | double 64-bit | float80 80-bit
var hasPet: Bool
//var arrayOfInts: Array<Int> // Arrays are strongly typed
var arrayOfInts: [Int]

// Dictionary - keys must be hashable; basic Swift types (Int, FLoat, Character, String) are hashable
//var dictionaryOfCapitalsByCountry: Dictionary<String, String>
var dictionaryOfCapitalsByCountry: [String: String]

// Set - like an array, but members are unordered and must be unique and hashable
var winningLotteryNumbers: Set<Int>

let number = 42
let fmStation = 91.1

// Arrays and dicts can be assigned literal values
var countingUp = ["one", "two", "three"]
// Subscripting for accessing of arrays and dicts
let secondEle = countingUp[1]

let nameByParkingSpace = [13: "Alice", 27: "Bob"]
let thirteen = nameByParkingSpace[13]
if let isOne = nameByParkingSpace[1] {
    print("Hi")
}


//Initializers
let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySet = Set<Float>()

let defaultNum = Int()
let defaultBool = Bool()
let meaning = String(number)
let availableRooms = Set([205, 411, "411"])

var defaultFloat = Float()
print(defaultFloat == 0)


let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

// Instance methods, properties
countingUp.count
emptyString.isEmpty
countingUp.append("three")

// Optionals
var anOptionalFloat: Float?
anOptionalFloat = 9.8

// Need to unwrap optionals
let x = anOptionalFloat! + 1

// Optional binding
var reading1: Float?
var reading2: Float?
var reading3: Float?
var avgReading: Float?

reading1 = 9.8
reading2 = 9.2
reading3 = 9.7


if let r1 = reading1, r2 = reading2, r3 = reading3 {
    avgReading = (r1 + r2 + r3) / 3
} else {
    let err = "Instrument reading nil"
}

print(avgReading!)


// Loops and String Interpolation
for var i = 0; i < countingUp.count; i++ {
    let string = countingUp[i]
    print(string)
}

let range = 0..<countingUp.count
for i in range {
    // do stuff
}

for string in countingUp {
    print(string)
}

for (i, string) in countingUp.enumerate() {
    print((i, string))
}

for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)" // Interpolation
}

// Enumerations and switch statements
// Discrete set of values
enum PieType {
    case Apple
    case Cherry
    case Pecan
}

let favoritePie = PieType.Pecan
let name: String
switch favoritePie {
case .Apple:
    name = "Apple"
case .Cherry:
    name = "Cherry"
case .Pecan:
    name = "Pecan"
}
    // use fallthrough keyword if need fall-through behvaior

let ver: Int = 10

switch ver {
case 0...8:
    print("Big cat")
case 9:
    print("Mavericks")
default:
    print("from the future")
}

enum Pie2: Int {
    case Apple = 0
    case Cherry
    case Pecan
}

let pieRaw = Pie2.Pecan.rawValue
if let pieType = Pie2(rawValue: pieRaw) {
    print("valid Pie \(pieType)")
}




