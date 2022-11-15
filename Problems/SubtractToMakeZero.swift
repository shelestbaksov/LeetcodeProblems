//
//  Ыгиекфсе.swift
//  Problems
//
//  Created by Leysan Latypova on 15.11.2022.
//

import Foundation

func minimumOperations(_ nums: [Int]) -> Int {
    var newNums = nums
    var count = 0
    
    
    while true {
        let max = newNums.max()
        if max == 0 {
            break
        }
        let min = newNums.filter({$0 > 0}).min()
        for i in 0..<newNums.count {
            if newNums[i] > 0 {
                newNums[i] = newNums[i] - min!
            }
        }
        count += 1
    }
    return count
}
