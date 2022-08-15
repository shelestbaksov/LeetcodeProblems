//
//  DominantIndex.swift
//  ffff
//
//  Created by Leysan Latypova on 01.08.2022.
//

import Foundation

func dominantIndex(_ nums: [Int]) -> Int {
    var maxNumber = 0
    var indexOfMaxNum = 0
    
    for (index, number) in nums.enumerated() {
        if number > maxNumber {
            maxNumber = number
            indexOfMaxNum = index
        }
    }
    for num in nums {
        if maxNumber < num * 2 && maxNumber != num {
            return -1
        }
    }
    return indexOfMaxNum
}
