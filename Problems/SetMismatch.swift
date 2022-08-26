//
//  SetMismatch.swift
//  Problems
//
//  Created by Leysan Latypova on 26.08.2022.
//

import Foundation

func findErrorNums(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    var previousNum = nums[0]
    
    for (index, num) in nums.enumerated() where index != 0 {
        if num == previousNum {
            result.append(num)
            result.append(num + 1)
        } else {
            previousNum = num
        }
    }
    return result
}
