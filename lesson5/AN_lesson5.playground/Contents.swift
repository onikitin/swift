import UIKit
enum glassState {
    case open, close
}
enum engineState {
    case start, stop
}
enum CarTrunkState {
    case open, close
}
enum CarTurboBoostState {
    case on, off
}


protocol Car {                            // Протокол
    var cGlassState: glassState {get set}
    var cEngineState: engineState {get set}
    func calculateDistace() -> Int     // просто описание метода
}

extension Car {
  mutating func switchGlass() {
        switch cGlassState {
        case .open:
            cGlassState = .close
        case .close:
            cGlassState = .open
        }
    }
    mutating func switchEngine() {
        switch cEngineState {
        case .start:
            cEngineState = .stop
        case .stop:
            cEngineState = .start
        }
    }
}

class sportCar: Car {
    var cGlassState: glassState
    var cEngineState: engineState
    var initialDistance: Int
    var coveredDistance: Int
    var tbState: CarTurboBoostState     //special for sport car

    func calculateDistace() -> Int {
        // реализуем свойство, override не нужен
        return (initialDistance + coveredDistance)
    }
    func switchTB() {            //special for sport car
            switch tbState {
            case .on:
                self.tbState = .off
            case .off:
                self.tbState = .on
            }
        }
    
    // имплементируем протокол
    init(initialDistance: Int, coveredDistance: Int, cGlassState: glassState, cEngineState: engineState, tbState: CarTurboBoostState) {
        self.initialDistance = initialDistance
        self.coveredDistance = coveredDistance
        self.cGlassState = cGlassState
        self.cEngineState = cEngineState
        self.tbState = tbState      //special for sport car
    }
}

extension sportCar: CustomStringConvertible{  // имплементируем протокол для вывода в консоль
    var description: String{
        return "The glass state is : \(cGlassState), engine state is: \(cEngineState), initial distance is: \(initialDistance), covered distance is: \(coveredDistance), turbo boost state is: \(tbState)"    // определяем, что именно будет выводиться
    }
}

class trunkCar: Car {
    var cGlassState: glassState
    var cEngineState: engineState
    var initialDistance: Int
    var coveredDistance: Int
    var trunkState: CarTrunkState     //special for trunk car
    
    func calculateDistace() -> Int {
        // реализуем свойство, override не нужен
        return (initialDistance + coveredDistance)
    }
    func switchTrunk() {            //special for trunk car
        switch trunkState {
        case .open:
            self.trunkState = .close
        case .close:
            self.trunkState = .open
        }
    }
    
    // имплементируем протокол
    init(initialDistance: Int, coveredDistance: Int, cGlassState: glassState, cEngineState: engineState, trunkState: CarTrunkState) {
        self.initialDistance = initialDistance
        self.coveredDistance = coveredDistance
        self.cGlassState = cGlassState
        self.cEngineState = cEngineState
        self.trunkState = trunkState      //special for trunk car
    }
}

extension trunkCar: CustomStringConvertible{  // имплементируем протокол для вывода в консоль
    var description: String{
        return "The glass state is : \(cGlassState), engine state is: \(cEngineState), initial distance is: \(initialDistance), covered distance is: \(coveredDistance), trunk state is: \(trunkState)"    // определяем, что именно будет выводиться
    }
}

   var eclipse = sportCar (initialDistance: 100, coveredDistance: 300, cGlassState: .open, cEngineState: .stop, tbState: .on)
    eclipse.calculateDistace()
    eclipse.switchGlass()
    eclipse.switchTB()
    print(eclipse)

var volvo = trunkCar (initialDistance: 1_000, coveredDistance: 20_000, cGlassState: .open, cEngineState: .stop, trunkState: .open)
volvo.calculateDistace()
volvo.switchGlass()
volvo.switchTrunk()
print(volvo)

