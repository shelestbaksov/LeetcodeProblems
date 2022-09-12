//
//  CountingWordsWithAgivenPrefix.swift
//  Problems
//
//  Created by Leysan Latypova on 12.09.2022.
//

import Foundation

func prefixCount(_ words: [String], _ pref: String) -> Int {
    var count = 0
    for word in words {
        if word.hasPrefix(pref) {
            count += 1
        }
    }
    return count
}
