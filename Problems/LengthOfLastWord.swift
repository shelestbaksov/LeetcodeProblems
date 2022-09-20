//
//  LengthOfLastWord.swift
//  Problems
//
//  Created by Leysan Latypova on 20.09.2022.
//

import Foundation

func lengthOfLastWord(_ s: String) -> Int {
    let array = Array(s.components(separatedBy: " ").reversed())
    for word in array {
        if word != "" {
            return word.count
        }
    }
    return 0
}
