//
//  CountCharacters.swift
//  Problems
//
//  Created by Leysan Latypova on 26.10.2022.
//

import Foundation

func countCharacters(_ words: [String], _ chars: String) -> Int {
    var result = 0
    
    for word in words {
        var characters = chars
        var isGood = true
        for char in word {
            guard let index = characters.firstIndex(of: char) else {
                isGood = false
                break
            }
            characters.remove(at: index)
        }
        if isGood{
            result += word.count
        }
    }
    return result
}
