//
//  IsomorphicStrings.swift
//  ffff
//
//  Created by Leysan Latypova on 02.08.2022.
//

import Foundation

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    let arrayOfS: [Character] = Array(s)
    let arrayOfT: [Character] = Array(t)
    var dictOfCharacters = [Character: Character]()
    
    guard arrayOfS.count == arrayOfT.count else { return false }
    
    for i in 0..<arrayOfS.count {
        if dictOfCharacters[arrayOfS[i]] == nil {
            if !dictOfCharacters.values.contains(arrayOfT[i]) {
                dictOfCharacters[arrayOfS[i]] = arrayOfT[i]
            }
        }
        if dictOfCharacters[arrayOfS[i]] != arrayOfT[i] {
            return false
        }
    }
    return true
}
