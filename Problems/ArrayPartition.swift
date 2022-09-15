//
//  ArrayPartition.swift
//  Problems
//
//  Created by Leysan Latypova on 15.09.2022.
//

import Foundation

func arrayPairSum(_ nums: [Int]) -> Int {
    let sortedNums = nums.sorted()
    var result = 0
    
    for i in 0..<sortedNums.count/2 {
        result += min(sortedNums[2*i], sortedNums[2*i + 1])
    }
    
    return result
}
