//
//  CountPrefixes.swift
//  Problems
//
//  Created by Leysan Latypova on 14.09.2022.
//

import Foundation

func countPrefixes(_ words: [String], _ s: String) -> Int {
    var count = 0
    
    for word in words {
        if s.hasPrefix(word) {
            count += 1
        }
    }
    return count
}


