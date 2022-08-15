//
//  skobochki.swift
//  ffff
//
//  Created by Leysan Latypova on 11.07.2022.
//

import Foundation

func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }
    guard !s.isEmpty else { return false }
    
    var array = [Character]()
    
    for char in s {
        if char == "(" {
            array.append(")")
        } else if char == "[" {
            array.append("]")
        } else if char == "{" {
            array.append("}")
        } else if let closingBracket = array.last, closingBracket == char {
            array.removeLast()
        } else {
            return false
        }
    }
    if !array.isEmpty {
        return false
    }
    return true
}

