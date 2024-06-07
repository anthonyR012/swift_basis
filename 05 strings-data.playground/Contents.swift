import UIKit

let someString = "Any string"

let multilineString = """
    Hello multiline
    test
    greeting
"""

//escape it
let escapeMultilineString = """
    Hello multiline\
    test\
    greeting
"""

let wiseWords = """
\"The imagination is more important than known"\
- Albert Einstain
"""

//unicode
let dolarSign = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"
let flagCountry = "U+1F1E8"


var emptyString = ""
var anotherEmptyString = String()


if emptyString.isEmpty {
    print("My string is empty")
}

var newSomeString = "A hourse"
newSomeString += " and a men"

//type value evalue
var a = "A"
var b = "B"
print("a vale \(a) y b vale \(b)")
b = a
print("a vale \(a) y b vale \(b)")
b = "C"
print("a vale \(a) y b vale \(b)")
a = "D"
print("a vale \(a) y b vale \(b)")

//character

let name = "Anthony Rubio"
for character in name {
    print(character)
}
print(name.count)

let exclamationMark : Character = "!"
let nameChars : [Character] = ["H","O","L","A"]
var nameString = String(nameChars)

nameString + String(exclamationMark)

//easy way
nameString.append(exclamationMark)

let multiplier = 3
let message = "The product of \(multiplier) x 3.5 is equal to \(Double(multiplier) * 3.5)"

let tableOf = 8

for idx in 1...10 {
    print("\(tableOf) x \(idx) = \(tableOf * idx)")
}

//subindice
let greeting = "Ey, Hello, howya?"

greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]

for idx in greeting.indices{
    print("\(greeting[idx])", terminator: "")
}

var welcome = "Welcoming"

welcome.insert("!" , at: welcome.endIndex)
welcome.insert(contentsOf: " what's new ", 
               at: welcome.index(
                before: welcome.endIndex))// stay like: Welcoming what's new !
let range = welcome.index(
    welcome.endIndex,offsetBy: -6)..<welcome.endIndex //remove (new ! ) of string

welcome.replaceSubrange(range, with: "") //with mean replace my range for that value
welcome


//substring

greeting
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<index] //this is not a string, its a substring
let newString = String(firstPart) //now this is un string


//prefix and suffix

let newGreeting = "Hi, I am Anthony"

newGreeting.hasPrefix("Hi")
newGreeting.hasPrefix("Tony")

let collection = [
"Act 1 Scene 1","Act 1 Scene 2","Act 1 Scene 3","Act 1 Scene 4","Act 1 Scene 5",
"Act 2 Scene 1","Act 2 Scene 2", "Act 2 Scene 3"]

var act1SceneCount = 0
for scene in collection {
    if scene.hasPrefix("Act 1"){
        act1SceneCount += 1
    }
}
print(act1SceneCount)


//unicode representation

let ghost = "My ghost!! 👻"  //ctrol+ cmd + space to put emojis

for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}
print(" ")

for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}

print(" ")

for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}
