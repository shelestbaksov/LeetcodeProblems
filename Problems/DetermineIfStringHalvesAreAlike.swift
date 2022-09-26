//
//  DetermineIfStringHalvesAreAlike.swift
//  Problems
//
//  Created by Leysan Latypova on 26.09.2022.
//

import Foundation

func halvesAreAlike(_ s: String) -> Bool {
    let vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    
    let firstPartOfString = s.prefix(s.count / 2)
    let secondPartOfString = s.suffix(s.count / 2)
    
    var countOfVowelsInFirst = 0
    
    for char in firstPartOfString {
        if vowels.contains(String(char)) {
            countOfVowelsInFirst += 1
        }
    }
    var countOfVowelsInSecond = 0
    for char in secondPartOfString {
        if vowels.contains(String(char)) {
            countOfVowelsInSecond += 1
        }
    }
    return countOfVowelsInFirst == countOfVowelsInSecond
}
