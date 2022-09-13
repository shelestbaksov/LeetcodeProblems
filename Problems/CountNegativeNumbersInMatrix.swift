//
//  CountNegativeNumbersInMatrix.swift
//  Problems
//
//  Created by Leysan Latypova on 13.09.2022.
//

import Foundation

func countNegatives(_ grid: [[Int]]) -> Int {
    var count = 0
    
    for array in grid {
        for i in 0..<array.count {
            if array[i] < 0 {
                count += 1
            }
        }
    }
    return count
}
