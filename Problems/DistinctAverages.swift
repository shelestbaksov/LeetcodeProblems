//
//  DistinctAverages.swift
//  Problems
//
//  Created by Leysan Latypova on 07.02.2023.
//

import Foundation

func distinctAverages(_ nums: [Int]) -> Int {
    var newNums = nums.sorted()
    var set = Set<Double>()
    
    while newNums.count != 0 {
        set.insert((Double(newNums.first!) + Double(newNums.last!)) / 2)
        newNums.remove(at: 0)
        newNums.removeLast()
    }
    
    return set.count
}
