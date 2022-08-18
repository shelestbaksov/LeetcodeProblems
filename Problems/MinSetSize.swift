//
//  MinSetSize.swift
//  Problems
//
//  Created by Leysan Latypova on 18.08.2022.
//

import Foundation

func minSetSize(_ arr: [Int]) -> Int {
    
    var dictOfNums = [Int: Int]()
    for num in arr {
        dictOfNums[num] = dictOfNums[num, default: 0] + 1
    }
    let sortedDictOfNums = dictOfNums.sorted(by: { $0.1 > $1.1 })
    
    var minCountOfNumsToRemove = 0
    var countOfNumsLeft = arr.count
    
    for (_, value) in sortedDictOfNums {
        minCountOfNumsToRemove += 1
        countOfNumsLeft -= value
        if countOfNumsLeft <= arr.count / 2 {
            return minCountOfNumsToRemove
        } else {
            continue
        }
    }
    return minCountOfNumsToRemove
}
