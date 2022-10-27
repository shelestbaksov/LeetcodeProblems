//
//  LongestCIS.swift
//  Problems
//
//  Created by Leysan Latypova on 27.10.2022.
//

import Foundation

func findLengthOfLCIS(_ nums: [Int]) -> Int {
    var count = 1
    var maxCount = 1
    
    for i in 0..<nums.count {
        if (i + 1) < nums.count {
            if nums[i + 1] > nums[i] {
                count += 1
                
                if maxCount < count {
                    maxCount = count
                }
            } else {
                count = 1
            }
        }
    }
    return maxCount
}
