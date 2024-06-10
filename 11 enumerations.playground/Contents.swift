import UIKit

// Fisrt class objects enum

enum SomeEnumeration{
    //here go the definition of enum
}

enum CompassPoint {
    case north
    case south
    case east
    case west
}
enum Planet : Int { //increment according with our value initial so , venus will get 2 and successively
    case mercurio = 1,  venus, earth, mars, jupiter, saturn, uranus, nepturne
}
//enums with raw values
let earthOrder = Planet.earth.rawValue //3 will printed
let possiblePlaner = Planet(rawValue: 5) //jupiter, be carefull it is an Optional value

var directionToGo = CompassPoint.east

directionToGo = .north

switch directionToGo {
case .north :
    print("Go to north")
case .south :
    print("Go to sourth")
case .west :
    print("Go to west")
case .east:
    print("Go to east")
}

let somePlanet = Planet.earth

enum Beverage : CaseIterable { //protocol be able to count of beverages
    case coffe, tea, juice, redbull
}

let numbersOfChoices = Beverage.allCases.count
for beverage in Beverage.allCases{
    print(beverage)
}


//bar code

enum BarCode {
    case upc (Int, Int, Int, Int )
    case qrCode (String)
}

var productBarCode = BarCode.upc(8, 85909, 51226,3)
productBarCode = .qrCode("ASFEVFRGRGRGF")


switch productBarCode{
case let .upc( numberSysten,manuFacter, product, check):
    print("UPC: \(numberSysten), \(manuFacter),\(product),\(check).")
case let .qrCode(productCode):
    print("QR: \(productCode)")
}


enum ASCIIControlCharacter : Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}





