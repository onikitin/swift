import UIKit

print ("This programm allows to find area, perimetr and hypotenuse of the right triangle")
//input block---------------
let a = 3.0
let b = 4.0
//calculations
let S = a * b / 2 //Area
let q: Double = a*a + b*b // technical
let c = q.squareRoot() // hypotenuse
let P = a + b + c  //Perimeter
print ("area = \(S), perimetr = \(P) and hypotenuse = \(c)")
