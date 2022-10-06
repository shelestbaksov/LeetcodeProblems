//
//  GoatLatin.swift
//  Problems
//
//  Created by Leysan Latypova on 06.10.2022.
//

import Foundation

func toGoatLatin(_ sentence: String) -> String {
    let vowels: [Character] = ["A","a", "E", "e", "I", "i", "O", "o", "U", "u"]
    let words = sentence.split(separator: " ")
    var result = [String]()
    for (index, word) in words.enumerated() {
        var word = String(word)
        let add = String(repeating: "a", count: index + 1)
        if vowels.contains(word.first!) {
            word += "ma" + add
        } else {
            let char = String(word.removeFirst())
            word += char + "ma" + add
        }
        result.append(word)
    }
    
    return result.joined(separator: " ")
}
