//
//  arithmeticProgression.swift
//  ffff
//
//  Created by Leysan Latypova on 15.07.2022.
//

import Foundation

func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
    var setOfDifferences = Set<Int>()
    let sortedArray = arr.sorted()
    
    for index in 0..<sortedArray.count - 1 {
        let difference = sortedArray[index + 1] - sortedArray[index]
        setOfDifferences.insert(difference)
    }
    if setOfDifferences.count == 1 {
        return true
    }
    
    return false
}
