//
//  NumberOfArithmeticTriplets.swift
//  Problems
//
//  Created by Leysan Latypova on 15.09.2022.
//

import Foundation

func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
    var count = 0
    for i in 0..<nums.count {
        for j in 1..<nums.count {
            for k in 2..<nums.count {
                if nums[k] - nums[j] == diff && nums[j] - nums[i] == diff {
                    count += 1
                }
            }
        }
    }
    return count
}
