//
//  PositionsOfLargeGroups.swift
//  Problems
//
//  Created by Leysan Latypova on 12.10.2022.
//

import Foundation


func largeGroupPositions(_ S: String) -> [[Int]] {
    let count = S.count
    var result: [[Int]] = []
    var i = 0
    var start = 0
    var end = 0
    var lastChar = S.first ?? "/"
    
    for char in S {
        if lastChar == char {
            end = i
        }
        if (lastChar != char || i == count - 1) && end - start >= 2 {
            result.append([start, end])
        }
        if lastChar != char {
            lastChar = char
            start = i
            end = i
        }
        i += 1
    }
    return result
}
