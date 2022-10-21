//
//  4Sum.swift
//  Problems
//
//  Created by Leysan Latypova on 21.10.2022.
//

import Foundation

func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    guard nums.count >= 4 else { return [] }
    let sortedNums = nums.sorted()
    var result = Set<[Int]>()
    
    for a in 0...sortedNums.count - 3 {
        for b in a+1...sortedNums.count - 2 {
            var c = b + 1
            var d = sortedNums.count - 1
            
            while c < d {
                
                let sum = sortedNums[a] + sortedNums[b] + sortedNums[c] + sortedNums[d]
                
                if sum == target {
                    result.insert([sortedNums[a], sortedNums[b], sortedNums[c], sortedNums[d]])
                    c += 1
                } else if sum < target {
                    c += 1
                } else if sum > target {
                    d -= 1
                }
            }
        }
        
    }
    return Array(result)
}
