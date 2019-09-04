import UIKit

print ("This programm allows to solve equations like A*x^2 + B*x + C = 0")
//input block---------------
let a = 1.0
let b = 2.0
let c = 1.0
//Discriminant calulation---
let D = b*b-4*a*c
//results output------------
if D >= 0 {
    let x1 = (-b + D.squareRoot())/2*a
    let x2 = (-b - D.squareRoot())/2*a
    print ("Root 1 = \(x1), Root 2 = \(x2)")
} else {
    print ("No real roots found")
}

