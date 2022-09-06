//
//  FindTheHighestAltitude.swift
//  Problems
//
//  Created by Leysan Latypova on 06.09.2022.
//

import Foundation

func largestAltitude(_ gain: [Int]) -> Int {
    var altitudes = [0]
    
    for num in gain {
        altitudes.append(altitudes.last! + num)
    }
    
    return altitudes.max() ?? 0
}

