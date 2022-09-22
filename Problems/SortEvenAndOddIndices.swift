//
//  SortEvenAndOddIndices.swift
//  Problems
//
//  Created by Leysan Latypova on 22.09.2022.
//

import Foundation

func sortEvenOdd(_ nums: [Int]) -> [Int] {
    guard nums.count > 2 else { return nums }
    
    var oddIndices = [Int]()
    var evenIndices = [Int]()
    
    for i in 0..<nums.count {
        if i % 2 == 0 {
            evenIndices.append(nums[i])
        } else {
            oddIndices.append(nums[i])
        }
    }
    let sortedEven = evenIndices.sorted(by: <)
    let sortedOdd = oddIndices.sorted(by: >)
    let count = max(sortedOdd.count, sortedEven.count)
    var result = [Int]()
    for i in 0..<count {
        if i < sortedEven.count{
            result.append(sortedEven[i])
        }
        if i < sortedOdd.count {
            result.append(sortedOdd[i])
        }
    }
    
    return result
}
