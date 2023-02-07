//
//  AverageValue.swift
//  Problems
//
//  Created by Leysan Latypova on 07.02.2023.
//

import Foundation

func averageValue(_ nums: [Int]) -> Int {
    var count = 0
    var sum = 0
    
    for num in nums {
        if num % 2 == 0 {
            if num % 3 == 0 {
                sum += num
                count += 1
            }
        }
    }
    return sum / count
}
