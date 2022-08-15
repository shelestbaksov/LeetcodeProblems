//
//  CountOfLetters.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func countLettersIn(word: String) -> [Character: Int] {
    var counts: [Character: Int] = [:]
    for letter in word {
        if let existingCount = counts[letter] {
            counts[letter] = existingCount + 1
        } else {
            counts[letter] = 1
        }
        let existingCount = counts[letter] ?? 0
        counts[letter] = existingCount + 1
    }
    return counts
}
