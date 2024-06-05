import UIKit
//Boolean
let orangesAreOrange = true
let foodIsDelicious = false
var isAged: Bool
isAged = true

    if isAged{
        print("Can in")
    } else {
        print("Can't in")
    }

//Tuplas
let http404Error = (404,"Page not found", true)
let (statusCode, statusMessage, _ ) = http404Error
print("El codigo del estado es \(statusCode) y mensaje: \(statusMessage)")

print("Status code is \(http404Error.0)")

let http200Status = (statusCode :200, description: "Success")

print("Status code is \(http200Status.statusCode)")



//Optionals (Be or not be like empty box) and nil

let possibleAge = "pac" //nic because we cannot cast a word to int
var convertedAge = Int(possibleAge) // Int? nil

var serverResponseCode : Int? = 404
serverResponseCode = nil

convertedAge = 10
// Optional binding
if let actualAge = convertedAge {
  //to get here means convertedAge its not null
    print("The String \(convertedAge!) is not null has value: \(actualAge)")
}

if let firstNumber = Int("4"),
   let secondNumber = Int("42"),
   firstNumber < secondNumber && secondNumber<100{
    print("First number is less than second number, and second is less than 100")
}

// Unwrapping implice
convertedAge = nil

print(convertedAge ?? 10) //If its nil then 10 will be print
let possibleString : String? = "A Optional String "
let forceUnWrappping : String = possibleString!

let assummedString : String! = "A String unwrapped the way implicite from an optional" //like optional
let implicitString : String = assummedString

convertedAge = 15
// Force unwrapping (I know my variable is not null
if convertedAge != nil{
    print("Is not null \(convertedAge!)") // using ! convert optional to int
}




