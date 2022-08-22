//
//  ConBeIncreasing.swift
//  Problems
//
//  Created by Leysan Latypova on 22.08.2022.
//

import Foundation

func canBeIncreasing(_ nums: [Int]) -> Bool {
    var initialNums = nums
    
    for i in 0..<initialNums.count {
        initialNums.remove(at: i)
        
        if initialNums == initialNums.sorted(), initialNums.count == Set(initialNums).count {
            return true
        } else {
            initialNums = nums
        }
    }
    return false
}
