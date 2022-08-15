//
//  FindTheAmountOfMaxNumber.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func findTheAmountOfMaxNumber(array: [Int]) -> Int {
    
    var maxNumber = Int.min
    var amount = 0
    
    for number in array {
        if number > maxNumber {
            maxNumber = number
        }
    }
    
    for number in array {
        if number == maxNumber {
            amount += 1
        }
    }
        
    return amount
}

func findTheAmountOfMaxNumberV2(array: [Int]) -> Int {
    
    var maxNumber = Int.min
    var counts: [Int: Int] = [:]
    
    for number in array {
        if number > maxNumber {
            maxNumber = number
        }

        let existingCount = counts[number] ?? 0
        counts[number] = existingCount + 1
    }
        
    return counts[maxNumber] ?? 0
}
