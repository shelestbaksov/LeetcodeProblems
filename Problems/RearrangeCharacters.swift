//
//  RearrangeCharacters.swift
//  Problems
//
//  Created by Leysan Latypova on 11.11.2022.
//

import Foundation

func rearrangeCharacters(_ s: String, _ target: String) -> Int {
    var dict = [Character: Int]()
    
    for char in s {
        dict[char, default: 0] += 1
    }
    
    var count = 0
    
    
    while true {
        var isCountable = true
        for char in target {
            if dict[char] == 0 || dict[char] == nil {
                isCountable = false
                break
            } else {
                dict[char]! -= 1
            }
        }
        if isCountable {
            count += 1
        } else {
            break
        }
    }
    return count
}
