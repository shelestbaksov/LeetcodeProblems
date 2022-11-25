//
//  SortArray.swift
//  Problems
//
//  Created by Leysan Latypova on 24.11.2022.
//

import Foundation

func sortArray(_ nums: [Int]) -> [Int] {
    var sortedNums = nums
    var left = 0
    var right = sortedNums.count - 1
    
    while true {
        
        if left >= right {
            break
        }
        if sortedNums[left] > sortedNums[right] {
            sortedNums.swapAt(left, right)
            if sortedNums[right] <= sortedNums[left + 1] {
                left += 1
            } else {
                right -= 1
            }
        } else if sortedNums[left] <= sortedNums[right] {
            left += 1
        }
    }
    return sortedNums
}
