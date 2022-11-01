//
//  FindAllKDistanceIndices.swift
//  Problems
//
//  Created by Leysan Latypova on 01.11.2022.
//

import Foundation

func findKDistantIndices(_ nums: [Int], _ key: Int, _ k: Int) -> [Int] {
    var indices = [Int]()
    var result = [Int]()
    
    for (i, num) in nums.enumerated() {
        if num == key {
            indices.append(i)
        }
    }
    
    for i in 0..<nums.count {
        for j in 0..<indices.count {
            if abs(i - indices[j]) <= k {
                result.append(i)
            }
        }
    }
    return result
}
