//
//  CheckAlmostEquivalent.swift
//  Problems
//
//  Created by Leysan Latypova on 28.10.2022.
//

import Foundation

func checkAlmostEquivalent(_ word1: String, _ word2: String) -> Bool {
    var dict = [Character: Int]()
    
    for char in word1 {
        dict[char, default: 0] += 1
    }
    
    for char in word2 {
        dict[char,default: 0] -= 1
    }
    
    let values = Set(dict.values)
    var didPass = true
    
    for value in values {
        if value > 3 || value < -3 {
            didPass = false
            break
        }
    }
    
    return didPass
}
