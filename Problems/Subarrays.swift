//
//  Subarrays.swift
//  Problems
//
//  Created by Leysan Latypova on 15.02.2023.
//

import Foundation

func findSubarrays(_ nums: [Int]) -> Bool {
    var dict = [Int: Int]()
    
    for i in 0..<nums.count {
        if i + 1 == nums.count {
            break
        }
        dict[nums[i] + nums[i+1], default: 0] += 1
    }
    
    let max = dict.values.max()
    
    return max! >= 2
}
