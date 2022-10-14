//
//  DetectCapital.swift
//  Problems
//
//  Created by Leysan Latypova on 14.10.2022.
//

import Foundation

func detectCapitalUse(_ word: String) -> Bool {
    let cWord = word
    
    if cWord.lowercased() == word {
        return true
    } else if cWord.uppercased() == word {
        return true
    } else {
        let dWord = cWord.lowercased()
        if dWord.firstCapitalized == word {
            return true
        }
    }
    return false
}

extension StringProtocol {
    var firstUppercased: String { return prefix(1).uppercased() + dropFirst() }
    var firstCapitalized: String { return prefix(1).capitalized + dropFirst() }
}
