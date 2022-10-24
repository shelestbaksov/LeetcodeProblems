//
//  SecondLargeDigitInString.swift
//  Problems
//
//  Created by Leysan Latypova on 24.10.2022.
//

import Foundation

func secondHighest(_ s: String) -> Int {
    var digits = Set<Int>()
    
    for char in s {
        if char.isNumber {
            digits.insert(char.wholeNumberValue!)
        }
    }
    
    if digits.isEmpty || digits.count == 1 {
        return -1
    } else {
        return digits.sorted(by: >)[1]
    }
}
