import UIKit



//Struct vs Class
// In classes we can make herarchy, desinitializer, reference counting (how many objects are using of this class)
// Struct do the same but what we talk before

struct SomeSctruct{
    //definition code
    
}

class SomeClass {
    //definition code
}

//We can use struct for conteiners data that don't do too much

struct Resolution{
    var width = 0 //stored properties or atributtes
    var height = 0
}

class VideoMode {
    var resolution = Resolution()//stored properties or atributtes
    var interfaced = false
    var frameRate = 0.0
    var name : String?
    
}


let someResolution = Resolution()
let someVideMode = VideoMode()

print(someResolution.width) //access to an atributte
//someResolution.width = 1280 we can not change our values since we initialize our object as let

someVideMode.frameRate = 30.0 //it allow us to modify our struct even if its initializa as a constant
print(someVideMode.frameRate)

// An struct occuped a space in memory, in a class we have a zone


//default initializations
let vga = Resolution(width: 640, height: 480)

vga.width
vga.height

let hd = Resolution(width: 1920,height: 1080)

var cineme = hd //memory, (It created a copy not a reference)
print("Cinema \(cineme.width) x \(cineme.height)")
cineme.width = 2048

print("Cinema \(cineme.width) x \(cineme.height)")
hd //it is not rewrite it since it is just a space in a


enum CompassPoint {
    case north, south, east, west
}

var currentDirection = CompassPoint.north
let oldDirection = currentDirection
currentDirection = .south

print(oldDirection)
print(currentDirection)


//classes are references

let tenEighty = VideoMode() //always will occupied the same space in memory
tenEighty.resolution = hd
tenEighty.interfaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


let alsoTenEigthy = tenEighty
alsoTenEigthy.frameRate = 30.0 //it will be rewritte all origin tenEighty
tenEighty

//compare two object
if tenEighty === alsoTenEigthy {  //!==
    print("Are the same objects")
}


//properties declared inside classes (store properties)

struct FixedLengthRange {
    var firstValue : Int
    let length : Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3) //if were let we cannot modify

rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4) //cannot be modify

//lazy store properties

//our classes always init with a value, on the contrary with lazy store, just initialize once we used
class DataImporter {
    var filename = "data.txt"
}

class DataManage {
    lazy var importer = DataImporter() //it will be created once we used
    var data = [String]()
}

let manager = DataManage()
manager.data.append("Something")
manager.data.append("Lot of data")
manager
//ultil here importer has not been created...
manager.importer.filename


//computer properties (are calculte by algorithms)

struct Point {
    var x = 0.0, y = 0.0
    
}

struct Size {
    var width = 0.0, heigth = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center : Point {  //if we modify the center, it will be failed or Rect, for that reason we use a computer variable so it calcule in base of origin and size
        //We can redule the get and set like:
        /*
         get{
             Point(x: origin.x + size.width / 2,y: origin.y + size.heigth / 2)
         }
         set{
             origin.x = newValue.x - size.width / 2
             origin.y = newValue.y - size.heigth / 2
         }
         */
        get{
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.heigth / 2
            return Point(x: centerX,y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.heigth / 2
        }
    }
}

var square = Rect(origin: Point(x: 0,y: 0),size: Size(width: 10,heigth: 10))
square.center

let initialSquareCenter = square.center
square.center = Point(x: 20,y: 20)
 
square.center

// read-only

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume : Double{
            return width * height * depth  //just reading
    }
}

let cuboid = Cuboid(width: 4.0,height: 5.0, depth: 2.0)
cuboid.volume
//cuboid.volume = 5// it will get an error
enum Lenguages : String {
    case es, en
}

class SayHi {
    var lenguage: Lenguages = Lenguages.en
    var sayHi : String {
        lenguage.rawValue == "es" ? "Hola que tal" : "Hi, there"
    }
}

var hi = SayHi()
hi.sayHi
hi.lenguage = Lenguages.es
hi.sayHi


//properties observer


//willset (Before)  or didset (After)

class StepCounter{
    var totalSteps : Int = 0{
        willSet{  //I can define the new of the parameter as well like: willSet(newValueSteps)
            print("The number steps is going to up until \(newValue)")
        }
        didSet{
            if totalSteps > oldValue{
                print("The number steps are increase in \(totalSteps - oldValue)")
            }
        }
    }
    
}

let stepCounter = StepCounter()

stepCounter.totalSteps = 200

stepCounter.totalSteps = 250

stepCounter.totalSteps = 500

class LifeUser {
    var currentLife : Int = 100 {
        didSet{
            if currentLife > 100 {
                currentLife = 100
            } else if currentLife <= 0 {
                print("Game over")
            }
        }
    }
}

var life = LifeUser()
life.currentLife = 200
life.currentLife
life.currentLife = -2


//type properties static

struct SomeStruct {
    var counter = 0
    static var storeTypeProperty = "Some value"
    static var computedTypeProperty :Int {
        return 1
    }
}

var instanceStr = SomeStruct() // the static variable aare commun between object
var otherInstance = SomeStruct()

SomeStruct.computedTypeProperty  // thougthout the same class
enum SomeEnum {
    static var storedTypeProperty = "SomeValue"
    static var compuedTypeProperty : Int {
        return 5
    }
}

class SomeClass2 {
    static var storedTypeProperty = "SomeValue"
    static var compuedTypeProperty : Int {
        return -9
    }
    class var overrideableComputedTypeProperty : Int {
        return 108
    }
}



//static methods

class SomeClass3{
    class func someMethod( ){
        
    }
}

SomeClass3.someMethod()

struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel{
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}


class Player {
    var tracker = LevelTracker()
    let playerName: String
    
    func complete(level: Int ){
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    
    init(name: String){
        self.playerName = name
    }
}


var player = Player(name: "Juan Gabriel")

player.complete(level: 1)

if player.tracker.advance(to: 7){
    print("Can in")
} else{
    print("Cant in")
}

player.complete(level: 7)
if player.tracker.advance(to: 7){
    print("Can in")
} else{
    print("Cant in")
}



