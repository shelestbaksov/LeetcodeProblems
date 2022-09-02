//
//  ShuffleString.swift
//  Problems
//
//  Created by Leysan Latypova on 02.09.2022.
//

import Foundation

func restoreString(_ s: String, _ indices: [Int]) -> String {
    var result: [Character] = Array(repeating: "a", count: s.count)
    
    for (index, character) in s.enumerated() {
        result[indices[index]] = character
    }
     return String(result)
}

