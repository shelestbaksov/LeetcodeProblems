//
//  SmallerNumbersThanCurrent.swift
//  Problems
//
//  Created by Leysan Latypova on 02.09.2022.
//

import Foundation

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var resultArray = [Int]()
    
    for num in nums {
        let currentNum = num
        var count = 0
        for num in nums where num != currentNum {
            if currentNum > num{
                count += 1
            }
        }
        resultArray.append(count)
    }
    return resultArray
}
