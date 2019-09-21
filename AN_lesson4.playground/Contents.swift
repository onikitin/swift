import UIKit

enum CarDoorState {
    case open, close
}
enum Transmission {
    case manual, auto
}
enum CarTrunkState {
    case open, close
}
enum CarTurboBoostState {
    case on, off
}
class Car {
    let color: UIColor
    let mp3: Bool
    let transmission: Transmission
    var km: Double
    var doorState: CarDoorState
    // ключевое слово static указывает на то, что это свойство класса
    static var carCount = 0
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: CarDoorState) {
        self.color = color
        self.mp3 = mp3
        self.transmission = transmission
        self.km = km
        self.doorState = doorState
        // в конструкторе будем увеличивать переменную на 1
        Car.carCount += 1
    }
    static func countInfo(){
        print("Выпущено \(self.carCount) автомобилей")
    }
    func openDoor() {
        self.doorState = .open
    }
    func closeDoor() {
        self.doorState = .close
    }
    func printInfo () {
        print ("The car color is \(self.color)")
        print ("The multimedia system installed - \(self.mp3)")
        print ("The transmission is \(self.transmission)")
        print ("The total distance covered is \(self.km)")
        print ("Front dor is \(self.doorState)")
     }
}

class trunkCar: Car {
    var truncState: CarTrunkState      // Новое свойство
    // Перечисляем все свойства
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: CarDoorState, truncState: CarTrunkState) {
        self.truncState = truncState    // инициализируем новое свойство
        // используем конструктор из родителя, чтобы завершить инициализацию класса
        super.init(color: color, mp3: mp3, transmission: transmission, km: km, doorState: doorState)
    }
    
    func openTrunc() {                  // Новый метод
        truncState = .open
    }
    
    func closeTrunc() {                // Новый метод
        truncState = .close
    }
    override func openDoor() {
        super.openDoor()            // вызываем реализацию родителя
        self.openTrunc()
    }
    override func closeDoor() {
        super.closeDoor()
        self.closeTrunc()
    }
    override func printInfo () {
        print ("The car color is \(super.color)")
        print ("The multimedia system installed - \(super.mp3)")
        print ("The transmission is \(super.transmission)")
        print ("The total distance covered is \(super.km)")
        print ("Front dor is \(super.doorState)")
        print ("The trunc is \(self.truncState)")
    }
}

class sportCar: Car {
    var turboBoostState: CarTurboBoostState      // Новое свойство
    // Перечисляем все свойства
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: CarDoorState, turboBoostState: CarTurboBoostState) {
        self.turboBoostState = turboBoostState    // инициализируем новое свойство
        // используем конструктор из родителя, чтобы завершить инициализацию класса
        super.init(color: color, mp3: mp3, transmission: transmission, km: km, doorState: doorState)
    }
    
    func enableTurboBoost() {                  // Новый метод
        turboBoostState = .on
    }
    
    func disableTurboBoost() {                // Новый метод
        turboBoostState = .off
    }
    override func printInfo () {
        print ("The car color is \(super.color)")
        print ("The multimedia system installed - \(super.mp3)")
        print ("The transmission is \(super.transmission)")
        print ("The total distance covered is \(super.km)")
        print ("Front dor is \(super.doorState)")
        print ("The boost state is \(self.turboBoostState)")
    }
    
}

var truncCar1 = trunkCar(color: .red, mp3: true, transmission: .manual, km: 0.0, doorState: .close, truncState: .close)
var sportCar1 = sportCar(color: .red, mp3: true, transmission: .manual, km: 0.0, doorState: .close, turboBoostState: .off)
let car1 = Car(color: .white, mp3: true, transmission: .auto, km: 0.0, doorState: .close)
var truncCar2 = trunkCar(color: .red, mp3: true, transmission: .manual, km: 0.0, doorState: .close, truncState: .close)
var sportCar2 = sportCar(color: .red, mp3: true, transmission: .auto, km: 0.0, doorState: .close, turboBoostState: .on)
var car2 = Car(color: .white, mp3: true, transmission: .auto, km: 0.0, doorState: .close)


truncCar1.closeDoor()
sportCar2.disableTurboBoost()
truncCar1.printInfo()
car2.printInfo()
sportCar2.printInfo()

print(Car.countInfo())
