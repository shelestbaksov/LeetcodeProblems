//
//  BalancedSplitString.swift
//  Problems
//
//  Created by Leysan Latypova on 26.09.2022.
//

import Foundation

func balancedStringSplit(_ s: String) -> Int {
    var result = 0
    var countOfChars = 0
    
    for char in s {
        if char == "L" {
            countOfChars += 1
            
        } else if char == "R" {
            countOfChars -= 1
        }
        if countOfChars == 0 {
            result += 1
        }
    }
    
    return result
}
