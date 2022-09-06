//
//  FindFirstPalindromicStringInArray.swift
//  Problems
//
//  Created by Leysan Latypova on 06.09.2022.
//

import Foundation

func firstPalindrome(_ words: [String]) -> String {
    for word in words {
        if word == String(word.reversed()){
            return word
        }
    }
    return ""
}
