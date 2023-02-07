//
//  ApplyOperations.swift
//  Problems
//
//  Created by Leysan Latypova on 07.02.2023.
//

import Foundation

func applyOperations(_ nums: [Int]) -> [Int] {
    var left = 0
    var right = 1
    var arr = nums
    
    while right != nums.count {
        if arr[left] == arr[right] {
            arr[left] *= 2
            arr[right] = 0
        }
        left += 1
        right += 1
    }
    
    left = 0
    right = 0
    
    while right != nums.count {
        if arr[left] == 0 && arr[right] != 0 {
            arr.swapAt(left, right)
            left += 1
            right += 1
        } else if arr[left] == 0 && arr[right] == 0 {
            right += 1
        } else {
            left += 1
            right += 1
        }
    }
    
    return arr
}
