//
//  MaximumProduct.swift
//  Problems
//
//  Created by Leysan Latypova on 15.11.2022.
//

import Foundation

func maximumProduct(_ nums: [Int]) -> Int {
    guard nums.count > 3 else {
        return nums.reduce(0, +)
    }
    
    let sortedNums = nums.sorted(by: <)
    if sortedNums[0] * sortedNums[1] * sortedNums.last! > sortedNums.suffix(3).reduce(1, *) {
        return sortedNums[0] * sortedNums[1] * sortedNums.last!
    }
    return sortedNums.suffix(3).reduce(1, *)
}
