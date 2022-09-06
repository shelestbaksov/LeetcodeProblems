//
//  MaximumProductOfTwoElements.swift
//  Problems
//
//  Created by Leysan Latypova on 06.09.2022.
//

import Foundation

func maxProduct(_ nums: [Int]) -> Int {
    let sortedNums = nums.sorted()
    
    return (sortedNums[sortedNums.count - 1] - 1)*(sortedNums[sortedNums.count - 2] - 1)
}
