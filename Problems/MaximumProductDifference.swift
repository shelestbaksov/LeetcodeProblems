//
//  MaximumProductDifference.swift
//  Problems
//
//  Created by Leysan Latypova on 05.09.2022.
//

import Foundation

func maxProductDifference(_ nums: [Int]) -> Int {
    let sortedNums = nums.sorted()
    
    return (sortedNums[sortedNums.count - 1] * sortedNums[sortedNums.count - 2]) - (sortedNums[0] * sortedNums[1])
}
