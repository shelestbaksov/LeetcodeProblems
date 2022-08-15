//
//  nearestPoint.swift
//  ffff
//
//  Created by Leysan Latypova on 14.07.2022.
//

import Foundation

func nearestValidPoint(_ x: Int, _ y: Int, _ points: [[Int]]) -> Int {
    var minDistance = Int.max
    var result = 0
    
    for (index, point) in points.enumerated() {
        guard point[0] == x || point[1] == y else {
            continue
        }
        let distance = abs(x - point[0]) + abs(y - point[1])
        if distance < minDistance {
            minDistance = distance
            result = index
        }
    }
    
    return result
}
