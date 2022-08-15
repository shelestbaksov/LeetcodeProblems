//
//  Perimeterr.swift
//  ffff
//
//  Created by Leysan Latypova on 14.07.2022.
//

import Foundation

func largestPerimeter(_ nums: [Int]) -> Int {
    guard nums.count >= 3 else { return 0 }
    let newNums = nums.sorted(by: >)
    
    for index in 0..<newNums.count - 2 {
        if newNums[index + 1] + newNums[index + 2] - newNums[index] > 0 {
            return newNums[index + 1] + newNums[index + 2] + newNums[index]
        }
    }
    return 0
}
