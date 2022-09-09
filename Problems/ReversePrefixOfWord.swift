//
//  ReversePrefixOfWord.swift
//  Problems
//
//  Created by Leysan Latypova on 09.09.2022.
//

import Foundation

func reversePrefix(_ word: String, _ ch: Character) -> String {
    var indexOfCh = 0
    
    for (index, char) in word.enumerated() {
        if char == ch {
            indexOfCh = index + 1
            break
        }
    }
    let prefix = word.prefix(indexOfCh).reversed()
    let suffix = word.suffix(word.count - indexOfCh)
    
    return String(prefix + suffix)
}
