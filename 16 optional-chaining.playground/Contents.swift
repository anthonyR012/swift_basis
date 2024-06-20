import UIKit


//class Person{
//    var residence: Residence?
//}
//
//class Residence{
//    var numberOfRooms = 1
//}

//let edgar = Person()
//
//if let roomCount = edgar.residence?.numberOfRooms{
//    print("The edgar's house has \(roomCount)")
//}else{
//    print("Edgar doesn't have house")
//}
//edgar.residence = Residence()
//
//if let roomCount = edgar.residence?.numberOfRooms{ //optional chaining, if can get number of rooms (Optionl)
//    print("The edgar's house has \(roomCount)")
//}else{
//    print("Edgar doesn't have house")
//}
//

class Person {
    var residence : Residence?
}

class Residence{
    var rooms = [Room]()
    var numberOfRooms: Int{
        return rooms.count
    }
    subscript(i: Int) -> Room{
        get {
            return rooms[i]
        }
        set{
            rooms[i] = newValue
        }
    }
    var address: Address?
    func printNumberOfRooms(){
        print("Number of rooms are \(numberOfRooms)")
    }
}

class Room{
    let name: String
    init(name: String) {
        self.name = name
    }
    
    
}

class Address{
    var buildingName : String?
    var buildingNumber: String?
    var street : String?
    
    func buildingIdentifier( ) -> String?{
        if let buildingNumber = buildingNumber, let street = street{
            return "\(buildingNumber),\(street)"
        }else if buildingName != nil {
            return buildingName
        }
        return nil
    }
}


let edgar = Person()

if let roomCount = edgar.residence?.numberOfRooms{
    print("The edgar's house has \(roomCount)")
}else{
    print("Edgar doesn't have house")
}

func createAddress( ) -> Address{
    print("The function has been called")

    let someAddress = Address()
    someAddress.buildingNumber = "13"
    someAddress.street  = "Street Platzi"
    return someAddress
}
edgar.residence?.address = createAddress() //nil so it didn't set the value
edgar
edgar.residence?.printNumberOfRooms() //doesn't print since it doesn' have residence

if edgar.residence?.printNumberOfRooms() != nil {
    print("I've bee able to get number of rooms")
}


if (edgar.residence?.address = createAddress()) != nil{
    print("I know now where edgar live")
}

if let firstRoomName = edgar.residence?[0].name{
    print("Fist room is\(firstRoomName)")
    
}


let edgarHouse = Residence()
edgarHouse.rooms.append(Room(name: "Bathroom"))
edgarHouse.rooms.append(Room(name: "Living room"))
edgarHouse.rooms.append(Room(name: "Kitchen"))
edgar.residence = edgarHouse
if let firstRoomName = edgar.residence?[0].name{
    print("Fist room is\(firstRoomName)")
    
}else {
    print("We could find his room")
}

//optional chaining multiple
edgar.residence?.address = createAddress()
if let edgarStreet = edgar.residence?.address?.street {
    print("The Edgar's street is \(edgarStreet)")
}

edgar

if let buildingIdentifier = edgar.residence?.address?.buildingIdentifier() {
    print("Edgar live in \(buildingIdentifier)")
}


if let _ = edgar.residence?.address?.buildingIdentifier()?.hasPrefix("13") {
    print("Edgar live in 13")
}

