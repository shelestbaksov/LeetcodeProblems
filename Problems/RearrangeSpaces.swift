//
//  RearrangeSpaces.swift
//  Problems
//
//  Created by Leysan Latypova on 21.09.2022.
//

import Foundation

func reorderSpaces(_ text: String) -> String {
    let textArray = text.split(separator: " ")
    let wordsCount = textArray.count
    var spacesCount = 0
    var output = ""
    for char in text {
        if char == " " {
            spacesCount += 1
        }
    }
    
    if spacesCount == 0 {
        return text
    }
    if wordsCount == 1 {
        return textArray.joined(separator: " ") + String(repeating: " ", count: spacesCount)
    }
    if spacesCount == wordsCount - 1 {
        return text
    }
    
    let spacesNeeded = spacesCount / (wordsCount - 1)
    let left = spacesCount - spacesNeeded * (wordsCount - 1)
    
    for word in textArray {
        if word == textArray.last! {
            output += word
            break
        }
        output += word + String(repeating: " ", count: spacesNeeded)
    }
    
    return output + String(repeating: " ", count: left)
}
