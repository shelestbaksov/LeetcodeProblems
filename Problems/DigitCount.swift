//
//  DigitCount.swift
//  Problems
//
//  Created by Leysan Latypova on 16.11.2022.
//

import Foundation

func digitCount(_ num: String) -> Bool {
    
    var dict = [String: Int]()
    
    for char in num {
        dict[String(char), default: 0] += 1
    }
    
    var isIn = true
    for i in 0..<num.count {
        if dict["\(i)"] == num[i].wholeNumberValue || (num[i].wholeNumberValue == 0 && dict["\(i)"] == nil) {
            continue
        } else {
            isIn = false
            break
        }
    }
    return isIn
}
