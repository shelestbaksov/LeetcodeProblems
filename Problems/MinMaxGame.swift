//
//  MinMaxGame.swift
//  Problems
//
//  Created by Leysan Latypova on 31.10.2022.
//

import Foundation


func minMaxGame(_ nums: [Int]) -> Int {
    var newNums = nums
    if newNums.count == 1 {
        return newNums.first!
    }
    
    while newNums.count != 1 {
        var nums = Array(repeating: 0, count: newNums.count / 2)
        
        for i in 0..<nums.count {
            if i % 2 == 0 {
                nums[i] = min(newNums[2 * i], newNums[2 * i + 1])
            } else {
                nums[i] = max(newNums[2 * i], newNums[2 * i + 1])
            }
        }
        newNums = nums
    }
    return newNums.first!
}
