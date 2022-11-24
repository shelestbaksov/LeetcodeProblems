//
//  MaxScoreSightseeingPair.swift
//  Problems
//
//  Created by Leysan Latypova on 24.11.2022.
//

import Foundation

func maxScoreSightseeingPair(_ values: [Int]) -> Int {
    var highest = 0
    var result = 0
    
    for value in values {
        result = max(result, value + highest)
        highest = max(highest, value) - 1
    }
    
    return result
}
