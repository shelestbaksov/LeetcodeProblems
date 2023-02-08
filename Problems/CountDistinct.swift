//
//  CountDistinct.swift
//  Problems
//
//  Created by Leysan Latypova on 08.02.2023.
//

import Foundation

func countDistinctIntegers(_ nums: [Int]) -> Int {
    let reversedNums = nums.map({ String($0).reversed() }).compactMap({ Int(String($0)) })
    let distinctedNums = Set(nums + reversedNums)
    return distinctedNums.count
}
