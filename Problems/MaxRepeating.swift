//
//  MaxRepeating.swift
//  Problems
//
//  Created by Leisan Latypova on 28.02.2023.
//

import Foundation

func maxRepeating(_ sequence: String, _ word: String) -> Int {
    guard sequence.contains(word) else {
        return 0
    }
    
    var max = 1
    
    while true {
        let array = Array(repeating: word, count: max)
        
        if sequence.contains(array.joined()) {
            max += 1
        } else {
            return max - 1
        }
    }
    
    return max
}
