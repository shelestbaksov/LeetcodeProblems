//
//  SmallestIndexWithEqualValue.swift
//  Problems
//
//  Created by Leysan Latypova on 05.10.2022.
//

import Foundation

func smallestEqual(_ nums: [Int]) -> Int {
    for i in 0..<nums.count {
        if i % 10 == nums[i] {
            return i
        }
    }
    return -1
}
