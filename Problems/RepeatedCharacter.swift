//
//  RepeatedCharacter.swift
//  Problems
//
//  Created by Leysan Latypova on 26.09.2022.
//

import Foundation

func repeatedCharacter(_ s: String) -> Character {
    var dictOfChars = [Character: Int]()
    
    for char in s {
        dictOfChars[char] = dictOfChars[char, default: 0] + 1
        
        if dictOfChars[char] == 2 {
            return char
        }
    }
    return "*"
}
