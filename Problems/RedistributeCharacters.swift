//
//  RedistributeCharacters.swift
//  Problems
//
//  Created by Leysan Latypova on 27.10.2022.
//

import Foundation

func makeEqual(_ words: [String]) -> Bool {
    let word = words.joined(separator: "")
    var dict = [Character: Int]()
    
    for char in word {
        dict[char, default: 0] += 1
    }
    
    for value in dict.values {
        if value % words.count != 0 {
            return false
        }
    }
    
    return true
}
