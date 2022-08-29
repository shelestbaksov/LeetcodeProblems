//
//  maxSatisfaction.swift
//  Problems
//
//  Created by Leysan Latypova on 29.08.2022.
//

import Foundation

func maxSatisfaction(_ satisfaction: [Int]) -> Int {
    var output = 0
    var sortedSatisfaction = satisfaction.sorted(by: <)
    let theBiggestNum = sortedSatisfaction[sortedSatisfaction.count - 1]
    
    if theBiggestNum < 0 {
        return 0
    } else if sortedSatisfaction[0] >= 0 {
        for i in 0..<sortedSatisfaction.count {
            output += sortedSatisfaction[i] * (i + 1)
        }
        return output
    } else {
        while sortedSatisfaction.count != 0 {
            var currentResult = 0
            for i in 0..<sortedSatisfaction.count {
                currentResult += sortedSatisfaction[i] * (i + 1)
            }
            if currentResult > output {
                output = currentResult
            }
            sortedSatisfaction.remove(at: 0)
        }
    }
    return output
}

