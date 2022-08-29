//
//  CountKdifference.swift
//  Problems
//
//  Created by Leysan Latypova on 29.08.2022.
//

import Foundation

func countKDifference(_ nums: [Int], _ k: Int) -> Int {
    guard nums.count > 1 else { return 0 }
    
    var result = 0
    
    for i in 0..<nums.count {
        for j in i..<nums.count {
            if abs(nums[j] - nums[i]) == k {
                result += 1
            }
        }
    }
    return result
}
