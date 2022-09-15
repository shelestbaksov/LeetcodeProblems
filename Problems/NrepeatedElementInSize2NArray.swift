//
//  NrepeatedElementInSize2NArray.swift
//  Problems
//
//  Created by Leysan Latypova on 15.09.2022.
//

import Foundation

func repeatedNTimes(_ nums: [Int]) -> Int {
    var dictOfNums = [Int: Int]()
    
    for num in nums {
        dictOfNums[num] = dictOfNums[num, default: 0] + 1
    }
    
    for (key, value) in dictOfNums {
        if value == nums.count / 2 {
            return key
        }
    }
    return -1
}
