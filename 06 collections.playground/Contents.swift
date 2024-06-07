import UIKit


//array
var someInt = [Int]()
someInt.append(31)
someInt.count

someInt = []

var someDouble = Array(repeating: 3.141595, count: 7)
print(someDouble)

var moreDoubles = Array(repeating: 2.5, count: 4)

var aLotOfDouble = someDouble + moreDoubles
aLotOfDouble.count


var family = ["Anthony","Erika","German","Cristian", "Marcela"]

var shoppingList : [String] = ["Papas", "Pimiento","Cebolla"]

if shoppingList.isEmpty {
    print("The shopping list is empty")
}

shoppingList.append("Cocacola")

shoppingList += ["Totopos","Guacamole"]

var firstElement = shoppingList[0]

shoppingList[0] = "Huevos"

shoppingList[2...4] = ["Naranja", "Platano"]

let pepper = shoppingList.remove(at: 1)

shoppingList.removeLast()

//iterator over a list

for item in shoppingList{
    print(item)
}

for (idx,item) in shoppingList.enumerated() {
    print("my \(item) in the position \(idx)")
}


//set (Conjuntos) don't allow duplices without orders
var letters = Set<Character>()

letters.count
letters.insert("a")
letters.insert("h")
letters.insert("b")

var favouritesGames : Set<String> = ["Final fantasy", "World of warcraft","Farcry"]

if favouritesGames.isEmpty {
    print("There aren't games")
}

favouritesGames.insert("Metal Gear")

if let removedGame = favouritesGames.remove("Farcry"){
    print("I deleted \(removedGame) game")
}

if favouritesGames.contains("Metal Gear"){
    print("I loved that game")
}

for vg in favouritesGames.sorted() {
    print(vg)
}

//operations over sets
let oddDigits : Set = [1,3,5,7,9]
let evenDigits : Set = [0,2,4,6,8]
let primeNumbers : Set = [2,3,5,7]

//A Union B = Element belong to a or b
oddDigits.union(evenDigits).sorted()
// A intersection B Element belong at the time A and B
evenDigits.intersection(primeNumbers)
//A diffent B, Element belong to A but B
oddDigits.subtracting(evenDigits)
// A symetric different B,(A-B) Union (B-A)
oddDigits.symmetricDifference(primeNumbers).sorted()

let houseAnimals : Set = ["🐶","😺"]
let farmAnimals : Set = ["🐮", "🐔", "🐑", "🐶","😺"]
let cityAnimals : Set = ["🐁","🕊️"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
// A and B are dijoint if its intersection are empty
farmAnimals.isDisjoint(with: cityAnimals)


//Dictionary
var nameOfIntegers = [Int : String]()
nameOfIntegers[15] = "firteen"
nameOfIntegers
nameOfIntegers = [:]
nameOfIntegers

var airports : [String: String] = ["YYZ":"Toronto",
                                   "DUB":"Dublin",
                                   "PMI":"Palma de maliorca"]

airports.count
airports.isEmpty
airports["LHR"] = "London City Airport"
airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("Before update was \(oldValue)")
}

if let airportName = airports["DUB"]{
    print("The item key existed")
}

airports["PMI"] = nil
airports

if let removeAirport = airports.removeValue(forKey: "DUB"){
    print("Removed airport \( removeAirport)")
}


airports
for (key, value) in airports {
    print("Key dictionaty \(key) and its value \(value)")
}

for airportKey in airports.keys {
    airportKey
}
for airportValue in airports.values {
    airportValue
}

let airportKeys = [String] (airports.keys.sorted())
let airportValues = [String](airports.values.sorted())



