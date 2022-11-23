//
//  FindWinners.swift
//  Problems
//
//  Created by Leysan Latypova on 23.11.2022.
//

import Foundation

func findWinners(_ matches: [[Int]]) -> [[Int]] {
    
    var winners = [Int: Int]()
    
    for match in matches {
        if winners.keys.contains(match[0]) {
            winners[match[0]]! += 0
        } else {
            winners[match[0]] = 0
        }
        if winners.keys.contains(match[1]) {
            winners[match[1]]! += 1
        } else {
            winners[match[1]] = 1
        }
    }
    
    return [(winners.filter {$0.1 == 0 }.keys).sorted(), (winners.filter {$0.1 == 1 }.keys).sorted()]
}
