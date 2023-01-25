//
//  LongestHarmoniousSub.swift
//  Problems
//
//  Created by Leysan Latypova on 25.01.2023.
//

import Foundation

func findLHS(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()
    var result = 0
    
    for num in nums {
        dict[num, default: 0] += 1
    }
    
    for num in nums {
        var sum = 0
        if nums.contains(num + 1) {
            sum = dict[num]! + dict[num + 1]!
            
            if sum > result {
                result = sum
            }
        }
    }
    
    return result
}
