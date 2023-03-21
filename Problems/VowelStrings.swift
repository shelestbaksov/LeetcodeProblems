//
//  VowelStrings.swift
//  Problems
//
//  Created by Leisan Latypova on 21.03.2023.
//

import Foundation

func vowelStrings(_ words: [String], _ left: Int, _ right: Int) -> Int {
    (left...right)
        .map { words[$0] }
        .filter { "aeiou".contains($0.first!) && "aeiou".contains($0.last!) }
        .count
}
