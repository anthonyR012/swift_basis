import UIKit


class Vehicle{
    var currentSpeed = 0.0
    var decription : String {
        return "Travelling to \(currentSpeed) km/h"
    }
    
    func makeNoise( ){
        //do nothing, case any car make different noise
    }
}


let someVehicule = Vehicle()
print(someVehicule.decription)

class Bicycle : Vehicle { //inheretance
    var hasBasket = false
}

let someBycicle = Bicycle()
someBycicle.hasBasket = true
someBycicle.currentSpeed = 15.0

print(someBycicle.decription)

class Tandem : Bicycle {
    var currentNumberOfPassangers = 0
    
    
}


let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassangers = 2
tandem.currentSpeed = 22

print(tandem.decription)
    

class Car : Vehicle {
    var hasCalefaction = false
    var gear = 1
    override var decription: String{
        return "Travalling to \(currentSpeed) in \(gear) gear"
    }
    
    override func makeNoise() {
        print(String(super.currentSpeed)  + " runrunrunr")
    }
}

class Boat : Vehicle {
    override var decription: String{
        return "Sailing to \(currentSpeed) km/h"
    }
}

var someCar = Car()
someCar.hasCalefaction = true
someCar.currentSpeed = 80
print(someCar.decription)
someCar.makeNoise()

var someBoat = Boat()
someBoat.currentSpeed = 15
print(someBoat.decription)

class Train : Vehicle{
    var numberOfWagons = 0
    
    override func makeNoise() {
        print("Chuchu")
    }
}


let train = Train()
train.makeNoise()

class AutomaticCar : Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 15.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 14
print(automatic.decription)

