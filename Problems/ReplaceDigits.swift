//
//  ReplaceDigits.swift
//  Problems
//
//  Created by Leysan Latypova on 17.11.2022.
//

import Foundation

func replaceDigits(_ s: String) -> String {
    let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var res = Array(s)
    for (i, char) in res.enumerated() {
        if char.isWholeNumber {
            res[i] = alphabet[alphabet.firstIndex(of: res[i - 1])! + Int(String(char))!]
        }
    }
    return String(res)
}
