//
//  FindWords.swift
//  Problems
//
//  Created by Leysan Latypova on 30.09.2022.
//

import Foundation

func findWords(_ words: [String]) -> [String] {
    var result = [String]()
    let rows = ["qwertyuiop", "asdfghjkl", "zxcvbnm"]
    
    for row in rows {
        for word in words {
            var contains = false
            for char in word {
                if row.contains(char.lowercased()) {
                    contains = true
                } else {
                    contains = false
                    break
                }
            }
            if contains {
                result.append(word)
            }
        }
    }
    return result
}
