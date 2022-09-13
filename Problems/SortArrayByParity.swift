//
//  SortArrayByParity.swift
//  Problems
//
//  Created by Leysan Latypova on 13.09.2022.
//

import Foundation

func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var result = nums
    var left = 0
    var right = 1
    
    while right != result.count {
        if result[left] % 2 != 0 {
            if result[right] % 2 == 0 {
                result.swapAt(left, right)
                left += 1
                right += 1
            } else {
                right += 1
            }
        } else {
            left += 1
            right += 1
        }
    }
    return result
}
