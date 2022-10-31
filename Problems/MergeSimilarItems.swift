//
//  MergeSimilarItems.swift
//  Problems
//
//  Created by Leysan Latypova on 31.10.2022.
//

import Foundation

func mergeSimilarItems(_ items1: [[Int]], _ items2: [[Int]]) -> [[Int]] {
    var dict = [Int:Int]()
    let items = items1 + items2
    
    for item in items {
        dict[item[0], default: 0] += item[1]
    }
    
    let itemRes = dict.sorted(by: { $0.0 < $1.0 })
    
    return itemRes.map { [$0.0, $0.1] }
}
