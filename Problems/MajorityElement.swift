//
//  MajorityElement.swift
//  Problems
//
//  Created by Leysan Latypova on 01.09.2022.
//

import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    let sortedNums = nums.sorted()
    return sortedNums[sortedNums.count / 2]
}
