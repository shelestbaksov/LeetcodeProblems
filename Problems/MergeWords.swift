//
//  mergeWords.swift
//  ffff
//
//  Created by Leysan Latypova on 19.07.2022.
//

import Foundation

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var newWord = ""
    var word1 = word1
    var word2 = word2
    
    while !word1.isEmpty && !word2.isEmpty {
        newWord.append(word1.removeFirst())
        newWord.append(word2.removeFirst())
    }
    if word1.isEmpty {
        newWord.append(word2)
    }
    if word2.isEmpty {
        newWord.append(word1)
    }
    return newWord
}

