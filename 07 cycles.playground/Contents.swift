import UIKit


let names = ["Ricardo","Juan","Edgar"]

for name in names {
    print("Hi \(name)")
}

let numberOfLegs = ["Spider":8, "ant":6, "Dog":4]
for (name, numLegs) in numberOfLegs {
    print("Animal \(name) with \(numLegs) legs")
}

for idx in 1...5{
    print("\(idx) x 3 = \(idx*63)")
}

let base = 2
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
    print(answer)
}

let minutes = 60
var hour = 9

for tickMack in 0..<minutes{
    print("\(hour) : \(tickMack)")
}

let minuteInterval = 5

for tickMack in stride(from: 0, to: minutes, by: minuteInterval) {
    print("\(hour) : \(tickMack)")
}

let hourInterval = 3

for hour in stride(from: 0, to: 24, by: hourInterval) {
    print("Hora : \(hour)")
}

//while
var i = 0

while i <= 10{
    
    i+=1
}

i = 0
repeat{
    i += 1
} while i <= 10

i = 1
let maxIteration = 100
let countSince = 2

func isPrime(n : Int) -> Bool {
    //until the concient is bigger than divisor
    var prime = [Bool](repeating: true, count: n + 1)
    var p = 2
    while p * p <= n { // v^2 > nTotal
        if prime[p]{
            for i in stride(from: p * p, to: n + 1, by: p) {
                prime[i] = false
            }
        }
        p += 1
    }
    var primeNumbers = [Int]()
        for i in 2...n {
            if prime[i] {
                primeNumbers.append(i)
            }
        }
    print(primeNumbers)
    return true
}

isPrime(n: 100)

//if and else

var temp = 13
if temp <= 15{
    print("Its could, turn on calefaction")
}else if  temp > 25 {
    print("Is starting to being heat, turn off calefaction")
}else{
    print("The weather is great!!!")
}

var money = 80
if money <= 10{
    print("give money")
} else if money <= 40{
    print("give money but you don't like it")
} else if money <= 70 {
    print("Complein about the price")
}else {
    print("Oh no, it is too much")
}

//switch case

var someCharacter : Character = "z"
switch someCharacter {
    case "a","A":
            print("First letter of alphabet")
    case "z","Z":
        print("The last letter of alphabet")
    default:
        print("Another letter")
}

someCharacter = "A"
switch someCharacter.lowercased() {
    case "a","e","i","o","u":
        print("Its a vowel")
    default:
        print("Is a consonant")
}


let moons = 62

let phrase = "Moon on Saturno"
let naturalCount : String

switch moons {
case 0:
    naturalCount = "There isn't"
case 1..<5:
    naturalCount = "There are a few"
case 5..<12:
    naturalCount = "There are a lot"
default :
    naturalCount = "Ther are thousands"
}

print(naturalCount)

//switch with tupla

let somePoint = (1,1)

switch somePoint {
case (0,0) :
    print("The point is in the origin")
case (_,0):
    print("The point is located in y axis")
case (0,_):
    print("The point is located in x axis")
case(-2...2,-2...2):
    print("Located squart sides")
default:
    print("The point is other place")
}

let anotherPoint = (2,0)
switch anotherPoint {
case (let x,0):
    print("Over X Axis with value \(x)")
case (0, let y):
    print("Over Y Axis with valur \(y)")
case let (x,y) where x == y:
    print("Over rect x = y")
case let (x,y) where x == -y:
    print("Over rect x = -y")
case let (x,y):
    print("In other place \(x), \(y)")
}


//switch with compues cases




