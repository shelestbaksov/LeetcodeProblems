//
//  CheckIfPangram.swift
//  Problems
//
//  Created by Leysan Latypova on 29.09.2022.
//

import Foundation

func checkIfPangram(_ sentence: String) -> Bool {
    let englishABC: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var dict = [Character: Int]()
    
    for char in sentence {
        dict[char, default: 0] += 1
    }
    
    for string in englishABC {
        guard dict[string] != nil else { return false }
        
        if dict[string]! >= 1 {
            continue
        } else {
            return false
        }
    }
    
    return true
}
