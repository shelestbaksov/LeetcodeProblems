//
//  3Sum.swift
//  Problems
//
//  Created by Leysan Latypova on 21.10.2022.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    guard nums.count >= 3 else { return [] }
    
    let sortedNums = nums.sorted()
    var result = Set<[Int]>()
    
    for i in 0..<sortedNums.count {
        var j = i + 1
        var k = sortedNums.count - 1
        
        while j < k {
            
            let sum = sortedNums[i] + sortedNums[j] + sortedNums[k]
            
            if sum == 0 {
                result.insert([sortedNums[i], sortedNums[j],sortedNums[k]])
                j += 1
            } else if sum < 0 {
                j += 1
            } else if sum > 0 {
                k -= 1
            }
        }
    }
    
    return Array(result)
}
