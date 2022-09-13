//
//  SumOfUnique.swift
//  Problems
//
//  Created by Leysan Latypova on 13.09.2022.
//

import Foundation

func sumOfUnique(_ nums: [Int]) -> Int {
    var dictOfNums = [Int: Int]()
    
    for num in nums {
        dictOfNums[num] = dictOfNums[num, default: 0] + 1
    }
    
    var output = 0
    for (key, value) in dictOfNums {
        if value == 1 {
            output += key
        }
    }
    
    return output
}

