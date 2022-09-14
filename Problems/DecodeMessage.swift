//
//  DecodeMessage.swift
//  Problems
//
//  Created by Leysan Latypova on 14.09.2022.
//

import Foundation

let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h",
                            "i", "j", "k", "l", "m", "n", "o", "p",
                            "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

func decodeMessage(_ key: String, _ message: String) -> String {
    var serialNumber = 0
    var encodedDict = [Character: Character]()

    for letter in key.replacingOccurrences(of: " ", with: "") {
        if encodedDict[letter] == nil {
            encodedDict[letter] = alphabet[serialNumber]
            serialNumber += 1
        } else {
            continue
        }
    }
    
    var output = ""
    
    for char in message {
        if char == " " {
            output += " "
            continue
        }
        output += String(encodedDict[char]!)
    }
    return output
}
