//
//  WateringPlants.swift
//  Problems
//
//  Created by Leysan Latypova on 24.08.2022.
//

import Foundation

func wateringPlants(_ plants: [Int], _ capacity: Int) -> Int {
    var amountOfStepsNeeded = 0
    var changingCapacity = capacity
    
    for (index, plant) in plants.enumerated() {
        amountOfStepsNeeded += 1
        changingCapacity -= plant
        
        if index == plants.count - 1 {
            break
        }
        if changingCapacity >= plants[index + 1] {
            continue
        } else {
            amountOfStepsNeeded += ((index + 1)*2)
            changingCapacity = capacity
        }
    }
    return amountOfStepsNeeded
}
