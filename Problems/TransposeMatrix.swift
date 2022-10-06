//
//  TransposeMatrix.swift
//  Problems
//
//  Created by Leysan Latypova on 06.10.2022.
//

import Foundation

func transpose(_ matrix: [[Int]]) -> [[Int]] {
    var result = Array(repeating: Array(repeating: 0, count: matrix.count), count: matrix[0].count)
    
    for i in 0..<matrix.count {
        for j in 0..<matrix[0].count {
            result[j][i] = matrix[i][j]
        }
    }
    return result
}
