//
//  ParkingSystem.swift
//  Problems
//
//  Created by Leysan Latypova on 17.10.2022.
//

import Foundation

class ParkingSystem {
    
    var lot: [Int]

    init(_ big: Int, _ medium: Int, _ small: Int) {
        lot = [0, big, medium, small]
    }
    
    func addCar(_ carType: Int) -> Bool {
        if lot[carType] < 1 {
            return false
        }
        lot[carType] -= 1
        return true
    }
}
