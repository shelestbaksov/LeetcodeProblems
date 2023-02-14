//
//  CountFairPairs.swift
//  Problems
//
//  Created by Leysan Latypova on 14.02.2023.
//

import Foundation

func countFairPairs(_ nums: [Int], _ lower: Int, _ upper: Int) -> Int {
    var result: [[Int]] = []
    let sorted = nums.sorted()
    
    for i in 0..<sorted.count {
        var right = sorted.count - 1
        while right > i {
            if sorted[i] + sorted[right] <= upper {
                if sorted[i] + sorted[right] >= lower {
                    result.append([sorted[i], sorted[right]])
                }
            }
            right -= 1
        }
    }
    return result.count
}
