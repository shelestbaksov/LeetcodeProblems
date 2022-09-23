//
//  MinimizeMaxPairSumInArray.swift
//  Problems
//
//  Created by Leysan Latypova on 23.09.2022.
//

import Foundation

func minPairSum(_ nums: [Int]) -> Int {
    let sortedNums = nums.sorted()
    var arrayOfPairs = [Int]()
    
    for i in 0..<sortedNums.count/2 {
        arrayOfPairs.append((sortedNums[i] + sortedNums[sortedNums.count - i - 1]))
    }
    
    return arrayOfPairs.max()!
}
