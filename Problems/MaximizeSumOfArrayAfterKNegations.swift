//
//  MaximizeSumOfArrayAfterKNegations.swift
//  Problems
//
//  Created by Leysan Latypova on 13.10.2022.
//

import Foundation


func largestSumAfterKNegations(_ nums: [Int], _ k: Int) -> Int {
    var nums = nums.sorted(by: >)
    var count = 0
    
    while count != k {
        nums[nums.count - 1] = nums.last! * -1
        count += 1
    }
    
    return nums.reduce(0, +)
}
