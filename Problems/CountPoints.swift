//
//  CountPoints.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func countPoints(_ points: [[Int]], _ queries: [[Int]]) -> [Int] {
    var result = [Int]()
    
    for query in queries {
        let circleX = query[0]
        let circleY = query[1]
        let radius = query[2]
        var count = 0
        for point in points {
            let x = circleX - point[0]
            let y = circleY - point[1]
            let euclidDistance = sqrt(Double(x*x + y*y))
            if euclidDistance <= Double(radius) {
                count += 1
            }
        }
        result.append(count)
    }
    return result
}
