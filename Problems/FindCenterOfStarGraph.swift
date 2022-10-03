//
//  FindCenterOfStarGraph.swift
//  Problems
//
//  Created by Leysan Latypova on 03.10.2022.
//

import Foundation

func findCenter(_ edges: [[Int]]) -> Int {
    
    for num in edges[0] {
        var contains = false
        for edge in edges {
            if edge.contains(num) {
                contains = true
            } else {
                contains = false
                break
            }
        }
        if contains {
            return num
        }
    }
    return 0
}
