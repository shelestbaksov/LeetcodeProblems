//
//  DivideArrayIntoPairs.swift
//  Problems
//
//  Created by Leysan Latypova on 15.09.2022.
//

import Foundation

func divideArray(_ nums: [Int]) -> Bool {
    var dictOfNums = [Int: Int]()
    var output = true
    for num in nums {
        dictOfNums[num] = dictOfNums[num, default: 0] + 1
    }
    
    for value in dictOfNums.values {
        if value % 2 != 0 {
            output = false
            break
        }
    }
    
    return output
}
