//
//  VowelString.swift
//  Problems
//
//  Created by Leysan Latypova on 08.02.2023.
//

import Foundation

func vowelStrings(_ words: [String], _ queries: [[Int]]) -> [Int] {
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    var result = [Int]()
    for query in queries {
        var count = 0
        for i in query[0]...query[1] {
            if vowels.contains(words[i].first!) && vowels.contains(words[i].last!) {
                count += 1
            }
        }
        result.append(count)
    }
    return result
}
