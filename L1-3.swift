import UIKit

print ("This program allows to calculate bank deposit in five years")
//input block---
let deposit = 1000.0 //bank deposit amount
let interest = 0.12 //yearly interest
var result = deposit
var counter = 0
repeat {
    result *= 1 + interest // or result += result * interest
    counter += 1
} while counter < 5
print ("bank deposit in five years will be \(result)")
