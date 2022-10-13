//
//  SquaresOfSortedArray.swift
//  Problems
//
//  Created by Leysan Latypova on 13.10.2022.
//

import Foundation


func sortedSquares(_ nums: [Int]) -> [Int] {
    var left = 0
    var right = nums.count - 1
    var result = nums
    var i = right
    while i >= 0 {
        if abs(nums[left]) < abs(nums[right]) {
            result[i] = nums[right] * nums[right]
            right -= 1
        } else {
            result[i] = nums[left] * nums[left]
            left += 1
        }
        i -= 1
    }
    return result
}
