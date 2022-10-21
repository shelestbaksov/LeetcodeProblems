//
//  CountQuadruplets.swift
//  Problems
//
//  Created by Leysan Latypova on 21.10.2022.
//

import Foundation

func countQuadruplets(_ nums: [Int]) -> Int {
    var count = 0
    
    for i in 0..<nums.count - 3 {
        for j in i + 1..<nums.count - 2 {
            for k in j + 1..<nums.count - 1 {
                for l in k + 1..<nums.count {
                    let sum = nums[i] + nums[j] + nums[k]
                    
                    if sum == nums[l] {
                        count += 1
                    }
                }
            }
        }
    }
    return count
}
