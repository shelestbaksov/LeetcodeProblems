//
//  MaximumBagsWithFullCapcity.swift
//  Problems
//
//  Created by Leysan Latypova on 22.09.2022.
//

import Foundation

func maximumBags(_ capacity: [Int], _ rocks: [Int], _ additionalRocks: Int) -> Int {
    var result = 0
    var remainder = additionalRocks
    var rocksNeeded = [Int]()
    for i in 0..<capacity.count {
        rocksNeeded.append(capacity[i] - rocks[i])
    }
    
    for rocksInNeed in rocksNeeded.sorted(by: <) {
        if rocksInNeed >= 0 && remainder > rocksInNeed {
            result += 1
            remainder -= rocksInNeed
        }
    }
    return result
}
