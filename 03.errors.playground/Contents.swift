import UIKit



func canThrowError( ) throws {
    //can err
}

do {
  try  canThrowError()
    //there wasn't an error
} catch {
    //there was an error
}


enum makeSandwichError: Error {
    case doNotHavePlates
    case amNotHungry
    case doNotHaveIngredients
}
func makeASandwich ( idException : Int ) throws{
    if idException == 1 {
        throw makeSandwichError.doNotHavePlates
    } else if idException == 2 {
        throw makeSandwichError.doNotHaveIngredients
    } else {
        throw makeSandwichError.amNotHungry
    }
}

func waitUntilGetHungry ( ){
    print("I am not hungry")
}
func goToGetPlates (){
    print("Need to buy plates")
}
func goToBuyIngredients( ){
    print("Need to buy ingredients")
}

do{
    try makeASandwich(idException: 1)
    //eat sandwich
}catch makeSandwichError.doNotHavePlates{
    //do I have plates?
    goToGetPlates()
}catch makeSandwichError.doNotHaveIngredients{
    //do I have ingrients?
    goToBuyIngredients()
}catch {
    //am I hungry?
    waitUntilGetHungry()
}

//asserts (just dev mode) and preconditions (even in prod)

let age = -5

assert(age >= 0, "The age of a user can be negative")
precondition(age >= 0, "The age of a user can be negative")

if age > 10 {
    print("Can in")
} else if age >= 0 {
    print("Can't in")
} else {
    assertionFailure("No error found") // it'll stop the program
}
