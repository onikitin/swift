import UIKit

enum doorState {
    case Open
    case Closed
}

enum autoGlass {
    case Open
    case Closed
}


enum engineState {
    case Started
    case Stopped
}


struct car {
    var model : String = ""
    var yearMade : Int = 1990
    var trunk : Int = 150
    var loadedSpace : Int = 0
    var carDoorState : doorState = .Closed
    var carAutoGlass : autoGlass = .Closed
    var carEngineState: engineState = .Stopped
    
    mutating func closeDoor() {
        self.carDoorState = .Closed
    }

    mutating func openDoor() {
        self.carDoorState = .Open
    }

    mutating func closeAutoGlass() {
        self.carAutoGlass = .Closed
    }
    
    mutating func openAutoGlass() {
        self.carAutoGlass = .Open
    }

    mutating func stopCarEngineState () {
        self.carEngineState = .Stopped
    }
    
    mutating func startCarEngineState () {
        self.carEngineState = .Started
    }

    mutating func carLoadTrunk (_ cargo:Int) {
        loadedSpace += cargo
    }

    mutating func carUnloadTrunk (_ cargo:Int) {
        loadedSpace -= cargo
    }
    func printInfo () {
        print ("The car model is \(self.model)")
        print ("The year made is \(self.yearMade)")
        print ("The trunk size is \(self.trunk)")
        print ("The used space in trunk is \(self.loadedSpace)")
        print ("Front dor is \(self.carDoorState)")
        print ("The glass is \(self.carAutoGlass)")
        print ("The engine is \(self.carEngineState)")
    }
    init(carModel:String, carYear:Int) {
        self.model = carModel
        self.yearMade = carYear
    }
 
}
    
    struct truck {
        var model : String = ""
        var yearMade : Int = 1990
        var trailer : Int = 15000
        var loadedSpace : Int = 0
        var truckDoorState : doorState = .Closed
        var truckAutoGlass : autoGlass = .Closed
        var truckEngineState: engineState = .Stopped
        
        mutating func closeDoor() {
            self.truckDoorState = .Closed
        }
        
        mutating func openDoor() {
            self.truckDoorState = .Open
        }
        
        mutating func closeAutoGlass() {
            self.truckAutoGlass = .Closed
        }
        
        mutating func openAutoGlass() {
            self.truckAutoGlass = .Open
        }
        
        mutating func stopTruckEngineState () {
            self.truckEngineState = .Stopped
        }
        
        mutating func startTruckEngineState () {
            self.truckEngineState = .Started
        }
        
        mutating func truckLoadTrunk (_ cargo:Int) {
            loadedSpace += cargo
        }
        
        mutating func truckUnloadTrunk (_ cargo:Int) {
            loadedSpace -= cargo
        }
            func printInfo () {
                print (self.model)
                print (self.yearMade)
                print (self.trailer)
                print (self.loadedSpace)
                print (self.truckDoorState)
                print (self.truckAutoGlass)
                print (self.truckEngineState)
            }
        }
        
  
      let truck1 = truck()
        truck1.printInfo()

var car1 = car (carModel: "Mazda", carYear: 1900)
car1.openDoor()
car1.carLoadTrunk(300)

car1.printInfo()


        

