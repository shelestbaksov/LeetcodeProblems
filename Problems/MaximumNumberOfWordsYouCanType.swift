//
//  MaximumNumberOfWordsYouCanType.swift
//  Problems
//
//  Created by Leysan Latypova on 05.10.2022.
//

import Foundation

func canBeTypedWords(_ text: String, _ brokenLetters: String) -> Int {
    var count = 0
    let text = text.split(separator: " ")
    
    for text in text {
        var contains = false
        for char in brokenLetters {
            if !text.contains(char) {
                contains = false
                continue
            } else {
                contains = true
                break
            }
        }
        if contains == false {
            count += 1
        }
    }
    
    return count
}
