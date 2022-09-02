//
//  NumOfGoodPairs.swift
//  Problems
//
//  Created by Leysan Latypova on 02.09.2022.
//

import Foundation

func numIdenticalPairs(_ nums: [Int]) -> Int {
    var result = 0
    var dictOfPairs = [Int: Int]()
    
    for num in nums {
        dictOfPairs[num] = dictOfPairs[num, default: 0] + 1
    }
    
    for (_, value) in dictOfPairs {
        if value >= 2 {
            result += value * (value - 1) / 2
        }
    }
    return result
}
