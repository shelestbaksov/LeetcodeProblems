//
//  LargestPositive.swift
//  Problems
//
//  Created by Leysan Latypova on 31.10.2022.
//

import Foundation

func findMaxK(_ nums: [Int]) -> Int {
    guard Set(nums).count > 1 else { return -1 }
    let newNums = nums.sorted()
    var left = 0
    var right = nums.count - 1
    
    while left < right {
        if abs(newNums[left]) == newNums[right] {
            return nums[right]
        } else if abs(newNums[left]) < newNums[right] {
            right -= 1
        } else if abs(newNums[left]) > newNums[right] {
            left += 1
        }
    }
    
    return -1
}
