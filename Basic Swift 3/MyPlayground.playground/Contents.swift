//: Playground - noun: a place where people can play

import UIKit

class Car{
    let numWheels : Int
    
    init(numWheels: Int) {
        self.numWheels = numWheels
    }
}

class FamilyCar: Car{
    let numDoors = 5
}

class BigFamilyCar: FamilyCar{
    var size = "Large"
}

var myFamCar = FamilyCar(numWheels:6)
myFamCar.numDoors
myFamCar.numWheels