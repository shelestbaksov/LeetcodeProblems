//
//  FindNumbersWithEvenNumberOfDigits.swift
//  Problems
//
//  Created by Leysan Latypova on 15.09.2022.
//

import Foundation

func findNumbers(_ nums: [Int]) -> Int {
    var count = 0
    
    for num in nums {
        var num = num
        var countOfTimesDivided = 0
        while num != 0 {
            num /= 10
            countOfTimesDivided += 1
        }
        if countOfTimesDivided % 2 == 0 {
            count += 1
        }
    }
    return count
}
