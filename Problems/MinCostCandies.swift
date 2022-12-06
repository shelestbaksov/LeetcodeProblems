//
//  MinCostCandies.swift
//  Problems
//
//  Created by Leysan Latypova on 06.12.2022.
//

import Foundation

func minimumCost(_ cost: [Int]) -> Int {
    if cost.count <= 2 { return cost.reduce(0, +) }
    
    let sorted = cost.sorted(by: >)
    var result = 0
    
    for i in 0..<sorted.count {
        if (i + 1) % 3 == 0 {
            continue
        } else {
            result += sorted[i]
        }
    }
    
    return result
}
