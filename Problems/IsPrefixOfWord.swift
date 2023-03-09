//
//  IsPrefixOfWord.swift
//  Problems
//
//  Created by Leisan Latypova on 09.03.2023.
//

import Foundation

func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int {
    let arr = sentence.components(separatedBy: " ")
    
    for (i, num) in arr.enumerated() {
        if num.hasPrefix(searchWord) {
            return i + 1
        }
    }
    
    return -1
}
