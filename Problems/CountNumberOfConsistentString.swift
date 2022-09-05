//
//  CountNumberOfConsistentString.swift
//  Problems
//
//  Created by Leysan Latypova on 05.09.2022.
//

import Foundation


func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
    var count = 0
    
    for word in words {
        for (index, char) in word.enumerated() {
            if allowed.contains(char) {
                if index == word.count - 1 {
                    count += 1
                }
                continue
            } else {
                break
            }
        }
    }
    return count
}
