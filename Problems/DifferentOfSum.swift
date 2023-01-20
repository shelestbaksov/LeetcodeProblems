//
//  DifferentOfSum.swift
//  Problems
//
//  Created by Leysan Latypova on 20.01.2023.
//

import Foundation

func differenceOfSum(_ nums: [Int]) -> Int {
    var sum = 0
    
    for num in nums {
        if num >= 1 && num <= 9 {
            sum += num
        } else {
            var temp = num
            
            while temp > 0 {
                var digit = temp % 10
                sum += digit
                temp /= 10
            }
        }
    }
    
    return abs(nums.reduce(0, +) - sum)
}
