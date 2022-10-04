//
//  CheckOccurancesOfAllCharacters.swift
//  Problems
//
//  Created by Leysan Latypova on 04.10.2022.
//

import Foundation

func areOccurrencesEqual(_ s: String) -> Bool {
    
    var charDict = [Character: Int]()
    
    for char in s {
        charDict[char, default: 0] += 1
    }
    
    var setOfChar = Set<Int>()
    charDict.values.forEach { value in
        setOfChar.insert(value)
    }
    
    return setOfChar.count == 1
}
