//
//  LargestSubstringBetweenTwoEqualChar.swift
//  Problems
//
//  Created by Leysan Latypova on 06.12.2022.
//

import Foundation

func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
    var res = -1
    var dict = [Character: Int]()
    
    for (i, char) in s.enumerated() {
        if let maxIndex = dict[char] {
            res = max(res, i - 1 - maxIndex)
        } else {
            dict[char] = i
        }
    }
    
    return res
}
