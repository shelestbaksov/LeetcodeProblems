//
//  LongestPalindrome.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func longestPalindrome(_ s: String) -> Int {
    var dictOfChars = [Character: Int] ()
    var evenValuesCount = 0
    var oddValuesCount = 0
    var length = 0

    for character in s {
        dictOfChars[character, default: 0] += 1
    }

    for (_, value) in dictOfChars {
        if value % 2 == 0 {
            evenValuesCount += 1
            let total = evenValuesCount * 2
            length += total
        } else if value % 2 != 0 {
            oddValuesCount += 1
        }
    }

    return length + (oddValuesCount > 0 ? 1 : 0)
}
