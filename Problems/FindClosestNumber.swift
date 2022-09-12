//
//  FindClosestNumber.swift
//  Problems
//
//  Created by Leysan Latypova on 12.09.2022.
//

import Foundation

func findClosestNumber(_ nums: [Int]) -> Int {
    guard nums.count > 1 else { return nums[0] }
    
    var minDifference = abs(nums[0] - 0)
    var minValue = nums[0]
    
    for i in 1..<nums.count {
        let difference = abs(nums[i] - 0)
        if difference < minDifference {
            minDifference = difference
            minValue = nums[i]
        }
        if difference == minDifference {
            minValue = max(minValue, nums[i])
        }
    }
    return minValue
}
