//
//  DegreeOfArray.swift
//  Problems
//
//  Created by Leysan Latypova on 14.10.2022.
//

import Foundation


func findShortestSubArray(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()
    
    for num in nums {
        dict[num, default: 0] += 1
    }
    
    let maxVal = dict.values.max()!
    var keys = [Int]()
    
    for (key, val) in dict {
        if val == maxVal {
            keys.append(key)
        }
    }
    var res = nums.count
    for key in keys {
        let left = Int(nums.firstIndex(of: key)!)
        let right = Int(nums.lastIndex(of: key)!)
        res = min(res, right - left + 1)
    }
    
    return res
}
