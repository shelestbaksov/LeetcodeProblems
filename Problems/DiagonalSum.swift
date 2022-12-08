//
//  DiagonalSum.swift
//  Problems
//
//  Created by Leysan Latypova on 08.12.2022.
//

import Foundation

func diagonalSum(_ mat: [[Int]]) -> Int {
    var result = 0
    
    for i in 0..<mat.count {
        result += mat[i][i] + (i == (mat.count - 1 - i) ? 0 : mat[i][mat.count - 1 - i])
    }
    return result
}
