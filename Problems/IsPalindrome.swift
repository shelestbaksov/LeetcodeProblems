//
//  IsPalindrome.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation


func isPalindrome(word: String) -> Bool {
    let reversedWord = String(word.reversed())
    
    if word == reversedWord {
        return true
    } else {
        return false
    }
}

func isPalindromeV2(word: String) -> Bool {
    guard !word.isEmpty else { return true }
    
    var leftIndex = 0
    var rightIndex = word.count - 1
    
    while true {
        let left = word[leftIndex]
        let right = word[rightIndex]
        
        if left != right {
            return false
        } else {
            leftIndex += 1
            rightIndex -= 1
        }
        
        if leftIndex >= rightIndex  {
            break
        }
    }
    return true
}

func isAlsoPalindrome(word: String) -> Bool {
    guard !word.isEmpty else { return true }

    var leftIndex = 0
    var rightIndex = word.count - 1

    while leftIndex <= rightIndex {
        let left = word[leftIndex]
        let right = word[rightIndex]

        if left != right {
            return false
        } else {
            leftIndex += 1
            rightIndex -= 1
        }
    }
    return true
}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
