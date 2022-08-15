//
//  longestCommonPrefix.swift
//  ffff
//
//  Created by Leysan Latypova on 12.07.2022.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    guard !strs.isEmpty else { return "" }
    
    var longestPrefix = strs[0]
    
    for word in strs.suffix(from: 1) {
        guard !word.isEmpty else { return "" }
        var currentPrefix = ""
        
        for (letterFromLongestPrefix, letterFromWord) in zip(longestPrefix, word) {
            if letterFromLongestPrefix == letterFromWord {
                currentPrefix.append(letterFromLongestPrefix)
                longestPrefix = currentPrefix
            } else {
                longestPrefix = currentPrefix
                break
            }
            
        }
    }
    return longestPrefix
}

