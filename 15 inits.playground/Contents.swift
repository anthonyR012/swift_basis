import UIKit


struct Fahrenheit {
    var temperature : Double
    init(temperature: Double) {
        self.temperature = temperature
    }
}

var f1 = Fahrenheit( temperature: 32)


struct Celsius {
    var temperature : Double
    
    init(FromFahrenheit fahrenheit: Double) {
        self.temperature = (fahrenheit - 32) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        self.temperature = kelvin - 273.15
    }
    
    init(_ celsius : Double) {
        self.temperature = celsius
    }
}

let boilingPointOfWater = Celsius(FromFahrenheit: 212)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)



struct Color{
    let red, green, blue : Double
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double) {
        self.red = white
        self.green = white
        self.blue = white
    }
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGrey = Color(white: 0.5)
let green = Color(red: 0,green: 1,blue: 0)


let bodyTemperature = Celsius( 37)

class SurveyQuestion {
    var text: String
    var response: String?
    
    init(text: String) {
        self.text = text
    }
    
    func ask( ){
        print(text)
    }
}


let q1 = SurveyQuestion(text: "Do you like tacos?")
q1.ask()
q1.response = "I love it";


//What happend if I inheritance a class with its inits?
// Does it inheritance all the inits I created in my parent class?
//two times of init designate or benefit

//Designate -> Designate super class
//Benefit -> Other init from the same class
// The last init called has to be designate

class Vehicule {
    var numberOfWheels = 0
    var description : String {
        return "\(numberOfWheels) wheels"
    }
}

let vehicle = Vehicule()
vehicle.description

class Bicycle : Vehicule{
    override init() { //designate
        super.init() //call init parent
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()
bicycle.description

class Hoverboard : Vehicule{
    var color : String
    
    init(color: String) { //benefic
        
        self.color = color
        //here call implicit super.init()
    }
    override var description: String {
        return "\(super.description) in the color \(self.color)"
    }
}

let hoverboard = Hoverboard(color: "Sliver")
hoverboard.description


// What happend if we cant initialize?

enum TemperatureUnit{
    case kelvin, celsius, fahrenheit
    
    init? (symbol: Character)  { //Filable initializer
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .fahrenheit
        default:
            return nil
        }
    }
}


let comeUnit = TemperatureUnit(symbol: "X")

class Product {
    let name: String
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}

class CartItem : Product{
    let quantity : Int
    
    init ? (name: String, quantity : Int) {
        if quantity < 1{
            return nil
        }
        self.quantity = quantity
        super.init(name: name)
    }
}

if let someSocks = CartItem(name: "Socks", quantity: 2) {
    print("\(someSocks.name) - \(someSocks.quantity)")
}
    

//deinit destructure initializers


class Bank {
    static var coinsInBank = 2_000
    static func distribute(coins numbeOfCoinsRequested: Int) -> Int{
        let numberOfCoinsToVend = min(numbeOfCoinsRequested,coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    
    static func receive(coins: Int){
        coinsInBank += coins
    }
}

class Player{
    var coinsInPurse : Int
    
    init(coinsInPurse: Int) {
        self.coinsInPurse = Bank.distribute(coins: coinsInPurse)
    }
    func win(coins: Int){
        coinsInPurse += Bank.distribute(coins: coins)
    }
    
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
    
}
var playerOne : Player?  = Player(coinsInPurse: 100)

Bank.coinsInBank
playerOne?.win(coins: 2_000)
Bank.coinsInBank

playerOne = nil
Bank.coinsInBank



