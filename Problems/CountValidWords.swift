//
//  CountValidWords.swift
//  Problems
//
//  Created by Leysan Latypova on 07.11.2022.
//

import Foundation

func countValidWords(_ sentence: String) -> Int {
    var count = 0
    let punctuation = ".,!"
    
    for word in sentence.split(separator: " ") {
        var valid = true
        var hyphenSeen = false
        if word == word.lowercased() {
            for (index, char) in word.enumerated() {
                if char.isNumber || (punctuation.contains(char) && index != word.count - 1) {
                    valid = false
                    break
                }
                
                if char == "-" {
                    let lastChar = word[word.index(word.endIndex, offsetBy: -1)]
                    
                    if hyphenSeen || index == 0 || index == word.count - 1
                        || index == word.count - 2 && punctuation.contains(lastChar) {
                        valid = false
                        break
                    }
                    hyphenSeen = true
                }
            }
        }
        if valid {
            count += 1
        }
    }
    return count
}
