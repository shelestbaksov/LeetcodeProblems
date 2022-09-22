//
//  DIStringMatch.swift
//  Problems
//
//  Created by Leysan Latypova on 22.09.2022.
//

import Foundation

func diStringMatch(_ s: String) -> [Int] {
    var result = [Int]()
    var lowestNum = 0
    var highestNum = s.count
    for char in s {
        if char == "I" {
            result.append(lowestNum)
            lowestNum += 1
        } else if char == "D" {
            result.append(highestNum)
            highestNum -= 1
        }
    }
    
    if let lastChar = s.last, lastChar == "I" {
        result.append(lowestNum)
    } else {
        result.append(highestNum)
    }
    
    return result
}
