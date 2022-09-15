//
//  CountEqualAndDivisible.swift
//  Problems
//
//  Created by Leysan Latypova on 15.09.2022.
//

import Foundation

func countPairs(_ nums: [Int], _ k: Int) -> Int {
    var count = 0
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[i] == nums[j] && (i * j) % k == 0 {
                count += 1
            }
        }
    }
    return count
}
