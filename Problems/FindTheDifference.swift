//
//  findTheDifference.swift
//  ffff
//
//  Created by Leysan Latypova on 19.07.2022.
//

import Foundation

func findTheDifference(_ s: String, _ t: String) -> Character {
    var sDict = [Character: Int]()
    let stStr = s + t
    
    for char in stStr {
        sDict[char, default: 0] += 1
    }
    
    for (key, value) in sDict {
        if value > 2 || value == 1 {
            return key
        }
    }
    return "o"
}
