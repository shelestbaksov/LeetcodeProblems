//
//  PivotIndex.swift
//  ffff
//
//  Created by Leysan Latypova on 01.08.2022.
//

import Foundation

func pivotIndex(_ nums: [Int]) -> Int {
    let rightSum = nums.reduce(0, +)
    var leftSum = 0
    
    for i in 0..<nums.count {
        if leftSum + nums[i] == rightSum - leftSum {
            return i
        }
        leftSum += nums[i]
    }
    return -1
}


