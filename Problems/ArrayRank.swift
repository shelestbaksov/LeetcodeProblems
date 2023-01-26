//
//  ArrayRank.swift
//  Problems
//
//  Created by Leysan Latypova on 26.01.2023.
//

import Foundation

func arrayRankTransform(_ arr: [Int]) -> [Int] {
    var dict = [Int: Int]()
    
    for (i, num) in Set(arr).sorted().enumerated() {
        dict[num] = i + 1
        
    }
    
    var result = arr
    for (i, num) in result.enumerated() {
        result[i] = dict[num]!
    }
    
    return result
}
