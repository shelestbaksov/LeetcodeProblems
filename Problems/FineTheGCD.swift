//
//  FineTheGCD.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func findTheGreatestCommonDivisor(of firstNumber: Int, and secondNumber: Int) -> Int {
    var maxNumber = max(firstNumber, secondNumber)
    var minNumber = min(firstNumber, secondNumber)
    var remainder = 1
    
    if maxNumber % minNumber == 0 {
        remainder = minNumber
    }

    while remainder != 0 {
        remainder = maxNumber % minNumber
        
        if remainder == 0 {
            return minNumber
        }
        
        maxNumber = minNumber
        minNumber = remainder
    }
    return 0
}
