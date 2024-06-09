import UIKit


//control transfer sentences- continue, break, fallthrough, return, throw, guard
//continue
let sentence = "The big minds thinking likewise"
var filteredSentecen = ""
let charactersToRemove : [Character] = ["a","e","i","o","u"]
for ch in sentence{
    
    if charactersToRemove.contains(ch){
        //don't do anything
        continue
    }
    filteredSentecen.append(ch)
    if ch == "b"{
        break
    }
    
}
filteredSentecen

//fallthrough (go to forward) using in switch

let integerToDescriber = 5
var description = "The number \(integerToDescriber) is"

switch integerToDescriber {
case 2,3,5,7,11,13,17,19 :  // the five is a prime number rigth, but it is a integer as well
    description += " a prime number and"
    fallthrough // for that reason we use this to fall into the next case
default:
    description += " an integer number." //should it get into this default clause
    
}
description

//guard
var people : [String : Any] = ["name" : "Anthoy", "age": 24, "isMale": true ]

func test ( person : [String :Any]){
    guard let surname = people["isMale"] else {
        return
    }
    //here exist surname
    print(surname)
}

test(person: people)

//version handle it
if #available(iOS 12, macOS 10.12, *) {
    //execute action (newer version
    
}else {
    //stay last code version (older versions)
    
}

