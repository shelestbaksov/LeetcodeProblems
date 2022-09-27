//
//  FindAllDublicates.swift
//  Problems
//
//  Created by Leysan Latypova on 27.09.2022.
//

import Foundation

func findDuplicates(_ nums: [Int]) -> [Int] {
    let sortedNums = nums.sorted()
    var result = [Int]()
    
    for i in 1..<sortedNums.count {
        if sortedNums[i] == sortedNums[i - 1] {
            result.append(sortedNums[i])
        }
    }
    
    return result
}
