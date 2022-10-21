//
//  3SumClosest.swift
//  Problems
//
//  Created by Leysan Latypova on 21.10.2022.
//

import Foundation

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    var answer = 10000
    let sortedNums = nums.sorted()
    
    for i in 0..<sortedNums.count {
        var j = i + 1
        var k = sortedNums.count - 1
        
        while j < k {
            
            let sum = sortedNums[i] + sortedNums[j] + sortedNums[k]
            
            if (abs(target - sum) < abs(target - answer)) {
                answer = sum
            }
            
            if sum == target {
                return target
            } else if sum < target {
                j += 1
            } else if sum > target {
                k -= 1
            }
        }
    }
    return answer
}
