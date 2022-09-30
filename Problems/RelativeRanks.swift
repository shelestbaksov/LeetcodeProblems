//
//  RelativeRanks.swift
//  Problems
//
//  Created by Leysan Latypova on 30.09.2022.
//

import Foundation

func findRelativeRanks(_ score: [Int]) -> [String] {
    var result = [String]()
    var dict = [Int: Int]()
    let sorted = score.sorted(by: >)
    for (index, score) in sorted.enumerated() {
        dict[score] = index
    }
    
    for scor in score {
        if dict[scor] == 0 {
            result.append("Gold Medal")
        } else if dict[scor] == 1 {
            result.append("Silver Medal")
        } else if dict[scor] == 2 {
            result.append("Bronze Medal")
        } else {
            result.append("\(dict[scor]! + 1)")
        }
    }
    
    return result
}
