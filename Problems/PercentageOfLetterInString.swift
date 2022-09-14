//
//  PercentageOfLetterInString.swift
//  Problems
//
//  Created by Leysan Latypova on 14.09.2022.
//

import Foundation

func percentageLetter(_ s: String, _ letter: Character) -> Int {
    var count = 0
    
    for char in s {
        if char == letter {
            count += 1
        }
    }

    return Int(Double(count)/Double(s.count)*100)
}
