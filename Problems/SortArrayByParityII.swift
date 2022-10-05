//
//  SortArrayByParityIII.swift
//  Problems
//
//  Created by Leysan Latypova on 05.10.2022.
//

import Foundation

func sortArrayByParityII(_ nums: [Int]) -> [Int] {
    var result = Array(repeating: 0, count: nums.count)
    var evenIndex = 0
    var oddIndex = 1
 
    for num in nums {
        if num % 2 == 0 {
            result[evenIndex] = num
            evenIndex += 2
        } else {
            result[oddIndex] = num
            oddIndex += 2
        }
    }
    
    return result
}
