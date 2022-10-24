//
//  MaxConsecutiveOnes.swift
//  Problems
//
//  Created by Leysan Latypova on 24.10.2022.
//

import Foundation

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var count = 0
    var maxCount = 0
    
    for num in nums {
        if num == 1 {
            count += 1
            maxCount = max(maxCount, count)
        } else {
            count = 0
            continue
        }
    }
    return maxCount
}
