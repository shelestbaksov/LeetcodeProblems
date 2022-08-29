//
//  MinimumOperations.swift
//  Problems
//
//  Created by Leysan Latypova on 29.08.2022.
//

import Foundation

func minOperations(_ nums: [Int]) -> Int {
    guard nums.count > 1 else { return 0 }
    
    var result = 0
    var leftCursor = 0
    var rightCursor = 1
    
    while rightCursor <= nums.count - 1 {
        let leftVal = nums[leftCursor]
        let rightVal = nums[rightCursor]
        
        if rightVal == leftVal {
            result += 1
        } else if rightVal < leftVal {
            result += (leftVal - rightVal) + 1
        }
        leftCursor = rightCursor
        rightCursor += 1
    }
    return result
}
