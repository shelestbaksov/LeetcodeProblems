//
//  GreatestLetter.swift
//  Problems
//
//  Created by Leysan Latypova on 30.11.2022.
//

import Foundation

func greatestLetter(_ s: String) -> String {
    var uppercased = [Character: Int]()
    
    for char in s {
        if char.isUppercase {
            uppercased[char, default: 0] += 1
        }
    }
    
    var array = [Character]()
    for (key, _) in uppercased {
        if s.contains(key.lowercased()) {
            array.append(key)
        }
    }
    
    if array.isEmpty {
        return ""
    } else {
        return String(array.sorted(by: >).first!)
    }
}
