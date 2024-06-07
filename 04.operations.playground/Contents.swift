import UIKit

//Unarios operations ( over one number ej:convert 5 to -5)
//Binary Operatiosn (Over two numbers ej: 5 + 5, 5/ 5 etc)
//Ternarios operations (Over three elements)


let b = 10
var a = 5
a = b

let (x,y) = (1,2)

if a == b {
    print("Are equals")
}

1+3
5-5
2*4
10.0/2.5

"Hello " + " mundo"
// Divisor/dividendo -> D == d*c+r (Euclides)
9/4 //c
9%4 //r

9 == 4 * 2 + 1

let five = 5
let minusFive = -five
let plusFive = -minusFive

var number = 3
number += 3
number -= 3


1 == 1
1 != 2
2 > 1
2 < 1
2 >= 1

let name = "Anthony Rubio"

if name == "Anthony Rubio" {
    print("Welcome Anthony")
}
(1, "Juan gabriel") <= (2, "Ricardo Celis") // True since 1 < to two
(2, "Juan gabriel") <= (2, "Ricardo Celis") //True since J is < to R

/*("Perro", false) < ("perro", true) it will be get an error since the boolean doesnt have an order*/


// operador ternario
/*
 if question {
    answer 1
 } else {
    answer 2
 }
 */
let contentHeight = 40
var hasImage = false
var rowHeight = 0
//if(hasImage){
//    rowHeight = contentHeight + 50
//} else{
//    rowHeight = contentHeight + 10
//}
rowHeight =   contentHeight + 10 + (hasImage ? 50 : 10)

// Nil Coalescing
let defaultAge = 18
var userAge : Int?

var ageToBeUsed = userAge ?? defaultAge


// Ranges
for idx in 1...5 { //Closed range
    print(idx)
}

for idx in 1..<5 {
   print(idx)
}// semi open range

let names = ["Ricardo", "Anthony", "Erika"]
for i in 0..<names.count {
    print(names[i])
}

for name in names[1...] {
    print(name)
}

let range = ...5
//range from 10  15

for idx in 10...15{
    print(idx)
}
for idx in 10..<15{
        print(idx)
}
for idx in (10 + 1)...15{
    print(idx)
}


//and (both true)
//or (one is true)
//nor (negate )

let allowEntry = false

if !allowEntry{
    print("Denied access")
}

let enterDoorCode = true
let passRetinaScan = false

if enterDoorCode && passRetinaScan {
    print("Allowed")
}
if enterDoorCode || passRetinaScan {
    print("You pass one verification")
}

let hasMoney = true
let hasInvitation = false

if hasMoney || hasInvitation {
    print("Welcoming...")
}

