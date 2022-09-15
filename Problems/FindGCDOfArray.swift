//
//  FindGCDOfArray.swift
//  Problems
//
//  Created by Leysan Latypova on 15.09.2022.
//

import Foundation

func findGCD(_ nums: [Int]) -> Int {
    
    var maxNumber = nums.max()!
    var minNumber = nums.min()!
    
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
