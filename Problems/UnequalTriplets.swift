//
//  UnequalTriplets.swift
//  Problems
//
//  Created by Leysan Latypova on 07.12.2022.
//

import Foundation

func unequalTriplets(_ nums: [Int]) -> Int {
    var count = 0
    
    for i in 0..<nums.count {
        for j in i + 1..<nums.count {
            for k in j + 1..<nums.count {
                if nums[i] != nums[j] && nums[i] != nums[k] && nums[j] != nums[k] {
                    count += 1
                }
            }
        }
    }
    return count
}
