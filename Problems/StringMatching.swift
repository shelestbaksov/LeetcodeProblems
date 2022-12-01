//
//  StringMatching.swift
//  Problems
//
//  Created by Leysan Latypova on 01.12.2022.
//

import Foundation


func stringMatching(_ words: [String]) -> [String] {
    var result = Set<String>()
    for i in 0..<words.count {
        for j in 0..<words.count where j != i {
            if words[i].contains(words[j]) {
                result.insert(words[j])
            }
        }
    }
    return Array(result)
}
