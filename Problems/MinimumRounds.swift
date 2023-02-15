//
//  MinimumRounds.swift
//  Problems
//
//  Created by Leysan Latypova on 15.02.2023.
//

import Foundation

func minimumRounds(_ tasks: [Int]) -> Int {
    var dict = [Int: Int]()
    
    for task in tasks {
        dict[task, default: 0] += 1
    }
    
    var count = 0
    
    for (_, value) in dict {
        if value <= 1 {
            return -1
        } else if value == 2 || value == 3 {
            count += 1
        } else {
            count += (value + 2) / 3
        }
    }
    return count
}
