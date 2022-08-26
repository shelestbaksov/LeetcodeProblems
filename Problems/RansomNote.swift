//
//  RansomNote.swift
//  Problems
//
//  Created by Leysan Latypova on 25.08.2022.
//

import Foundation

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var dictOfMagazineChars = [Character: Int]()
    
    for char in magazine {
        dictOfMagazineChars[char] = dictOfMagazineChars[char, default: 0] + 1
    }
    
    for ran in ransomNote {
        if dictOfMagazineChars[ran] == nil { return false }
        else if dictOfMagazineChars[ran]! >= 1 {
            dictOfMagazineChars[ran]! -= 1
            continue
        } else if dictOfMagazineChars[ran] == 0 { return false}
    }
    return true
}
