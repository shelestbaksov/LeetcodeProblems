//
//  IntersectionOfMultipleArrays.swift
//  Problems
//
//  Created by Leysan Latypova on 05.10.2022.
//

import Foundation

func intersection(_ nums: [[Int]]) -> [Int] {
    var dict = [Int: Int]()
    for num in nums {
        for digit in num {
            dict[digit, default: 0] += 1
        }
    }
    
    var result = [Int]()
    for (key, value) in dict {
        if value == nums.count {
            result.append(key)
        }
    }
    
    return result.sorted()
}
