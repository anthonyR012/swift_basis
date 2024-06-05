import UIKit

var greeting = "Hello, playground"

print(greeting)

//Declare contant
let maxNumberAttempts = 3

//Declare variable
var currentAttempt = 0
var x = 0.0 , y = 0.0, z = 0.0

//Type annotation
var welcomming : String

welcomming = "Bienvenido"

print(welcomming)

var blue, green, red : Double

 print("Ey, \(welcomming) \(greeting)")

//Comment simple
/* A lot of content
 with multilines
  */

// Data types

let age = 24

let minValueUn8 = UInt8.min // 2 elevado 0 - 1
let maxValueUn8 = UInt8.max  // 2 elevado 8 - 1

let minValue8 = Int8.min
let maxValue8 = Int8.max

// float 32 bits and double 64 bits since its doble of float
let f1 : Float = 3.1415  //Force to be float otherwise it will be double
let d1 : Double = 3.14159265 //
 
let decimalInteger = 17 // 1 *10^1 +7
let binaryInteger = 0b10001 // 1*2 ^ 4 + 0*2^3+0*2^2+0^1+1*2^0
let octalInteger = 0o21 //2*8^1+1*8^0
let hexadecimalInteger = 0x11 //1*16^1+1*16^0

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimlDouble = 0xC.3p90


let paddedDouble = 000123.456
let someNumber = 0000097.540

let oneMillion = 1_000_000_000
let justMoreTHenMillion = 1_000_000_000.000_001

let cannotBeNegative : UInt8 = 1 //-1 it wil get an error


// casting

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one) //twoThousand + one it will get an error so we cast


var pi = 3 + 0.14159 // Swift make the inference to parse them both

let three = 3
let decimalNumber = 0.14159

pi = Float64(three) + decimalNumber // three + decimalNumber sum this values would get us an error, so we have to parse them

let integerPi = Int(pi) //truncate or round with foundation


//Type alias
typealias AudioSample = UInt8
var maxAplitude = AudioSample.max







