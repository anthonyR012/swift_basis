import UIKit

//closures (Function that appears in three different context)

//1. Global Functions
//2. Nested Functions
//3. Closure

let names = ["Christian","Anthony","Alexis","Edgar"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedName = names.sorted(by: backward)

reversedName


/* closure
 { *(params) -> type in
    //code
 }
 */

reversedName = names.sorted(by:{ (s1: String, s2: String) -> Bool in
    return s1 > s2
})

reversedName = names.sorted(by:{ s1,s2 in s1 > s2})

reversedName = names.sorted(by:{ $0 > $1})

reversedName = names.sorted(by: >)


//Trailing clouser, Function wrote it in the of other function

func someFunctionThatTakesAClouser(clousere: () -> Void){
    
}

someFunctionThatTakesAClouser(clousere: {
    //clousere body
})

someFunctionThatTakesAClouser {
    //add closure here
}

reversedName = names.sorted { $0 > $1 }

let digitNames = [0:"Zero",1: "One",2:"Two",3:"Three",4:"Four",5:"Five",6:"Six",7:"Seven",8:"Eight",9:"Nain"]

let numbers = [16,58,510,-2127]

let numbersString = numbers.map { (number) -> String in
    var isNegative = number < 0
    var numberEdittable = isNegative ? (number * -1) : number
    var output = ""
    
    repeat{
        output = digitNames[numberEdittable%10]! + output
        numberEdittable /= 10
    }while numberEdittable > 0
    
    if isNegative {
        output.insert("-", at: output.startIndex)
    }
    return output
}

// capturing closures

func makeIncrement (forIncrement amount : Int) -> () -> Int{
    var runningTotal = 0
    func incrementer( ) -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrement(forIncrement: 10)

incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrement(forIncrement: 7)
incrementBySeven()
incrementBySeven()
incrementBySeven()


//escaping closures

var completionHandlers : [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler : @escaping () -> Void){ //save my clousures to run afterwards
    completionHandlers.append(completionHandler)
}


func someFunctionWithoutEscapingClousere(clousere : ( )-> Void){
    clousere()
}

class SomeClass{
    var x = 10
    func doSomething( ){
        someFunctionWithEscapingClosure {
            self.x = 100        // We need declare self to let know swift what is the Variable we meant to
        }
        someFunctionWithoutEscapingClousere {
            x = 200             // we don't need the self cause it run inmedialy allowed to swift recognized what X we meant to
        }
    }
}

let instance = SomeClass()
print(instance.x) //10
instance.doSomething()
print(instance.x) // 200

completionHandlers.first?() // run espaping closure so now our x has to be 100
print(instance.x)


