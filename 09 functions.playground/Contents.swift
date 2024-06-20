import UIKit


func greeting(person :  String) -> String{
    let greet = "Hi, \(person)"
    return greet
}

greeting(person: "Anthony")
greeting(person: "Edgar")


func sayHelloWorld( ) -> String{
    return "Hello World"
}

sayHelloWorld()

func greeting(person: String, isMale: Bool, age: Int) -> String{
    
    if isMale {
        return "Welcome him, \(age > 18 ? "younger" : "older") men"
    } else {
        return "Welcome her, \(age > 18 ? "younger" : "older") women"
    }
    
}

greeting(person: "Alejandro",isMale: true, age: 15)
greeting(person: "Olivia", isMale: false,age: 20)


func sayHi(person : String) {
    print("HI, \(person)")
}

sayHi(person: "Anthony")


func printAndCount (text : String) -> Int{
    return text.count
}

let _ = printAndCount(text: "ssssssssss")

func minMax( array : [Int]) -> (min : Int, max : Int)? {
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin {
            currentMin = value
        }else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

minMax(array: [8,1])
minMax(array: [5,8])
let bounds = minMax(array: [5,4,10])

if let (min, max) = bounds {
    print("The values are between \(min) and \(max)")

}
 
//params and variadcs


func someFunction (f1 firstParamName:  Int,f2 secondParamName : Int = 6){ // nick with default values
    //can use both of them (params)
    print("\(firstParamName) and \(secondParamName)")
}

someFunction(f1: 5)

//someFunction(firstParamName: <#T##Int#>, secondParamName: <#T##Int#>) too long names
someFunction(f1: 1, f2: 8)

func greeting(_ person: String , from hometown : String ) -> String{  //no declare nick
    return "Hi \(person), its a plesure that you come from \(hometown)"
}

greeting("Anthony Rubio", from:  "Mojica") //example

//variactics
func mean (_ numbers : Double... ) -> Double {
    var total : Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

mean(1,2,3,4,5)
mean(5,5,1,56,1,4,4,5,2)//now the function can received several parameters of numbers


func mediaGeometrica(_ numbers: Double...) -> Double{ //here example of variadcs
    var total: Double = 1
    for number in numbers {
        total *= number
    }
    return pow(total, 1/Double(numbers.count))
    
}
print(mediaGeometrica(5,5,65))


var x = 5
func addOne(number : Int){
    var edited = number
    edited += 1
    
}

addOne(number: x)

func swapTwoInts(_ a : inout Int, _ b: inout Int){ //recieved the value by reference a not as a copy
    let tempA = a
    a = b
    b = tempA
}

var someInt = 3
var otherInt = 7
print("The value \(someInt) and the other \(otherInt)")
swapTwoInts(&someInt, &otherInt)
print("The value \(someInt) and the other \(otherInt)")

//function types

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a+b
} // (Int, Int) -> Int

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a*b
}// (Int, Int) -> Int


func printHv( ){
    print("Hello world")
}// () -> void

var mathFunction : (Int, Int) -> Int = multiplyTwoInts

mathFunction(4,5)


func printMathResult ( _ mathFunc : (Int,Int) -> Int, _ a: Int, _ b: Int){
    print("Result \(mathFunc(a,b))")
}
printMathResult(mathFunction, 5, 6)


func stepForward( _ input : Int) -> Int{
    return input + 1
}


func stepBackward( _ input : Int) -> Int{
    return input - 1
}

func chooseStepFunction(backward : Bool) -> (Int) -> Int{ // return a function that recived and return an integer (Int) -> Int
    
    return backward ? stepBackward: stepForward
}


var anyValue = 7
let moveNearnerZero = chooseStepFunction(backward: anyValue > 0)
while anyValue != 0 {
    print("Value \(anyValue)...")
    anyValue = moveNearnerZero(anyValue)
}
print("Cero!!!")


//Nested Functions (Funciones anidadas)


func chooseStepFunction2(backward : Bool) -> (Int) -> Int{ // return a function that recived and return an integer (Int) -> Int
    func stepForward( _ input : Int) -> Int{
        return input + 1
    }


    func stepBackward( _ input : Int) -> Int{
        return input - 1
    }
    
    return backward ? stepBackward: stepForward
}
var anyValue2 = -7
let moveNearnerZero2 = chooseStepFunction2(backward: anyValue2 > 0)
while anyValue2 != 0 {
    print("Value \(anyValue2)...")
    anyValue2 = moveNearnerZero2(anyValue2)
}
print("Cero!!!")



