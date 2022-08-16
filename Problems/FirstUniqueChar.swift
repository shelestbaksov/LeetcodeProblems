//
//  FirstUniqueChar.swift
//  Problems
//
//  Created by Leysan Latypova on 16.08.2022.
//

import Foundation

func firstUniqChar(_ s: String) -> Int {
    var dictOfCharacters = [Character: Int]()
    
    for char in s {
        dictOfCharacters[char] = dictOfCharacters[char, default: 0] + 1
    }
    
    for (index, char) in s.enumerated() {
        if dictOfCharacters[char] == 1 {
            return index
        }
    }
    return -1
}
