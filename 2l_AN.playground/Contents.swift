import UIKit
//Task 1------------------------------------------------------
func oddFunction(_ check: Int) {
    if check % 2 == 0 {
    print("The mumber \(check) is odd")
    } else {
    print("The mumber \(check) is even")
    }
}
oddFunction(3)

//Task 2------------------------------------------------------

func divThreeFunction(_ check: Int) {
    if check % 3 == 0 {
        print("The mumber \(check) is divided by three")
    } else {
        print("The mumber \(check) is not divided by three")
    }
}
divThreeFunction(6)

//Task 3------------------------------------------------------

var riseArray: [Int] = []
for i in 0...99 {
    riseArray.append(i)
}

//Task 4------------------------------------------------------

for value in riseArray {
    if (value % 2) == 0 || (value % 3) > 0 {
        riseArray.remove(at: riseArray.index(of: value)!)
    }
}

//Task 5------------------------------------------------------

func generateFibonacci (_ index:Int, _ array:[Double]) -> Double {
    switch index {
    case 0 : return 0
    case 1 : return 1
    default:
        return array[index-1] + array[index-2]
    }
}

var  fSequence: [Double] = []
for j in 0...99 {
fSequence.append(generateFibonacci(j, fSequence))
}

//Task 6------------------------------------------------------

func checkIfPrime (_ primeC: Int) -> Bool { // this function is checking if number is prime
    switch primeC {
    case 0:  return false
    case 1 : return false
    case 2 : return false
    default:
        var isPrime = false
        for k in 2...primeC - 1 {
            if primeC % k == 0 {
                return false } else {
                isPrime = true
            }
        }
        if isPrime == true {
            return true } else {
            return false}
    }
    }


var primeNumArray: [Int] = []
var eCounter = 0 // prime numbers element counter
var l = 0 // internal counter

while eCounter < 100 { // prefiling array with prime numbers
    if checkIfPrime(l) {
        primeNumArray.append(l)
//        print ("Element #\(eCounter) is \(l)")
        eCounter += 1
        l += 1
    } else {
        l += 1
    }
}
