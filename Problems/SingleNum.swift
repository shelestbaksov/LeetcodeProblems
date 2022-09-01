//
//  SingleNum.swift
//  Problems
//
//  Created by Leysan Latypova on 01.09.2022.
//

import Foundation

func singleNumber(_ nums: [Int]) -> Int {
    var setOfNumbers = Set<Int>()
    
    for num in nums {
        if setOfNumbers.contains(num) {
            setOfNumbers.remove(num)
        } else {
            setOfNumbers.insert(num)
        }
    }
    return setOfNumbers.first ?? 0
}
