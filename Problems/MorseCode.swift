//
//  MorseCode.swift
//  Problems
//
//  Created by Leysan Latypova on 17.08.2022.
//

import Foundation

let morseCodeDict: [Character: String] = [
    "a": ".-",
    "b": "-...",
    "c": "-.-.",
    "d": "-..",
    "e": ".",
    "f": "..-.",
    "g": "--.",
    "h": "....",
    "i": "..",
    "j": ".---",
    "k": "-.-",
    "l":  ".-..",
    "m":  "--",
    "n":  "-.",
    "o":  "---",
    "p":  ".--.",
    "q":  "--.-",
    "r":  ".-.",
    "s":  "...",
    "t":  "-",
    "u":  "..-",
    "v":  "...-",
    "w":  ".--",
    "x":  "-..-",
    "y":  "-.--",
    "z":   "--.."
]

func uniqueMorseRepresentations(_ words: [String]) -> Int {
    var uniqueMorseRepres = Set<String>()
    for word in words {
        var translatedWord = ""
        for character in word {
            translatedWord += morseCodeDict[character]!
        }
        uniqueMorseRepres.insert(translatedWord)
    }
    return uniqueMorseRepres.count
}


