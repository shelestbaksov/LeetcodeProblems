//
//  NumberOfStringsThatAppearSubstrings.swift
//  Problems
//
//  Created by Leysan Latypova on 17.11.2022.
//

import Foundation

func numOfStrings(_ patterns: [String], _ word: String) -> Int {
    var count = 0
    for pattern in patterns {
        if word.contains(pattern) {
            count += 1
        }
    }
    return count
}
