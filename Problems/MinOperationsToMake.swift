//
//  MinOperationsToMake.swift
//  Problems
//
//  Created by Leysan Latypova on 03.11.2022.
//

import Foundation


func minOperations2(_ nums: [Int]) -> Int {
    var nums = nums
    var result = 0
    
    for i in 0..<nums.count where i + 1 < nums.count {
        if nums[i] >= nums[i + 1] {
            result += nums[i] - nums[i + 1] + 1
            nums[i + 1] += nums[i] - nums[i + 1] + 1
        }
    }
    return result
}
