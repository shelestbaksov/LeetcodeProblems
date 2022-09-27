//
//  SingleNumberIII.swift
//  Problems
//
//  Created by Leysan Latypova on 27.09.2022.
//

import Foundation

func singleNumber(_ nums: [Int]) -> [Int] {
    var dictOfNums = [Int: Int]()
    
    for num in nums {
        dictOfNums[num, default: 0] += 1
    }
    
    var result = [Int]()
    for (key, value) in dictOfNums {
        if value == 1 {
            result.append(key)
        }
    }
    return result
}
