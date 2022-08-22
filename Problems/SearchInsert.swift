//
//  SearchInsert.swift
//  Problems
//
//  Created by Leysan Latypova on 19.08.2022.
//

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var start = 0
    var end = nums.count - 1
    
    if target < nums[start] {
        return 0
    } else if target > nums[end] {
        return end + 1
    }
    
    while start <= end {
        let mid = (end - start) / 2
        let midValue = nums[mid]
        
        if target == midValue { return mid }
        if target == nums[start] { return start }
        if target == nums[end] { return end }
        else if target > midValue {
            start = mid + 1
        } else if target < midValue {
            end = mid - 1
        }
    }
    return start
}
