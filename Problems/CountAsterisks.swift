//
//  CountAsterisks.swift
//  Problems
//
//  Created by Leysan Latypova on 26.09.2022.
//

import Foundation

func countAsterisks(_ s: String) -> Int {
    var countOfBars = 0
    var result = 0
    
    for char in s {
        if char == "|" {
            countOfBars += 1
        } else if char == "*" && countOfBars % 2 == 0 {
            result += 1
        }
    }
    
    return result
}
