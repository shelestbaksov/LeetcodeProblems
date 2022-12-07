//
//  CountElements.swift
//  Problems
//
//  Created by Leysan Latypova on 07.12.2022.
//

import Foundation

func countElements(_ nums: [Int]) -> Int {
    let min = nums.min()
    let max = nums.max()
    var count = 0
    
    for num in nums {
        if num != min && num != max {
            count += 1
        }
    }
    return count
}
