//
//  CountPairsOfStrings.swift
//  Problems
//
//  Created by Leysan Latypova on 06.02.2023.
//

import Foundation

func similarPairs(_ words: [String]) -> Int {
    var result = 0
    
    for i in 0..<words.count {
        for j in i+1..<words.count {
            if Set(words[i]) == Set(words[j]) {
                result += 1
            }
        }
    }
    return result
}
