//
//  ClosestTarget.swift
//  Problems
//
//  Created by Leysan Latypova on 03.02.2023.
//

import Foundation

func closetTarget(_ words: [String], _ target: String, _ startIndex: Int) -> Int {
    var result = Int.max
    
    if !words.contains(target) {
        return -1
    } else {
        for i in 0..<words.count {
            if words[i] == target {
                let distance = abs(startIndex - i)
                result = min(
                    result,
                    min(distance, words.count - distance)
                )
            }
        }
    }
    return result
}
