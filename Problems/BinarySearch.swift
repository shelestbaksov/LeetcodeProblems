//
//  binarySearch.swift
//  ffff
//
//  Created by Leysan Latypova on 12.07.2022.
//

import Foundation

func search(_ nums: [Int], _ target: Int) -> Int {
    var minIndex = 0
    var maxIndex = nums.count - 1
    
    while true {
        let midIndex = (minIndex + maxIndex)/2
        let midValue = nums[midIndex]
        
        if target < nums[minIndex] || target > nums[maxIndex] {
            return -1
        } else if target == midValue {
            return midIndex
        } else if target == nums[minIndex] {
            return minIndex
        } else if target == nums[maxIndex] {
            return maxIndex
        }
        
        if target < midValue {
            maxIndex = midIndex - 1
        } else if target > midValue {
            minIndex = midIndex + 1
        }
    }
}

func searchV2(_ nums: [Int], _ target: Int) -> Int {
    var minIndex = 0
    var maxIndex = nums.count - 1
    
    if target < nums[minIndex] || target > nums[maxIndex] {
        return -1
    }
    
    while true {
        let midIndex = (minIndex + maxIndex)/2
        let midValue = nums[midIndex]
        
        if target == midValue {
            return midIndex
        } else if target == nums[minIndex] {
            return minIndex
        } else if target == nums[maxIndex] {
            return maxIndex
        }
        
        if target < midValue {
            maxIndex = midIndex - 1
        } else if target > midValue {
            minIndex = midIndex + 1
        }
    }
}

//print(search([1, 2, 6, 7, 8, 10, 11, 25, 27, 28, 33], 25))
