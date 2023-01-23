//
//  AlternateDigitSum.swift
//  Problems
//
//  Created by Leysan Latypova on 23.01.2023.
//

import Foundation

func alternateDigitSum(_ n: Int) -> Int {
    let digits = String(n).compactMap { Int(String($0)) }
    var result = 0
    
    for (i, digit) in digits.enumerated() {
        if i % 2 == 0 {
            result += digit
        } else {
            result += (digit * -1)
        }
    }
    
    return result
}
