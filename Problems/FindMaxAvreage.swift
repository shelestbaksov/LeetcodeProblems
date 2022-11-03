//
//  FindMaxAvreage.swift
//  Problems
//
//  Created by Leysan Latypova on 03.11.2022.
//

import Foundation

func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var result = Double(Int.min)
    var left = 0
    var sum = Double(0)
    
    for (i, num) in nums.enumerated() {
        sum += Double(num)
        if i + 1 - left == k {
            result = max(sum / Double(k), result)
            sum -= Double(nums[left])
            left += 1
        }
    }
    return result
}
