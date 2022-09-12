//
//  MaxNumberOfPairs.swift
//  Problems
//
//  Created by Leysan Latypova on 12.09.2022.
//

import Foundation

func numberOfPairs(_ nums: [Int]) -> [Int] {
    guard nums.count > 1 else { return [0, 1] }
    
    var pairCount = 0
    var leftCount = 0
    var dictionaryOfValues = [Int:Int]()
    
    for i in 0..<nums.count{
       dictionaryOfValues[nums[i]] = dictionaryOfValues[nums[i], default: 0] + 1
    }
    
    for (_,value) in dictionaryOfValues {
        pairCount += value / 2
        leftCount += value % 2
    }
    
    return [pairCount, leftCount]
}
