//
//  CountDigits.swift
//  Problems
//
//  Created by Leysan Latypova on 23.01.2023.
//

import Foundation

func countDigits(_ num: Int) -> Int {
    let digits = String(num).compactMap { Int(String($0)) }
    var result = 0
    
    for digit in digits {
        if num % digit == 0 {
            result += 1
        }
    }
    
    return result
}
