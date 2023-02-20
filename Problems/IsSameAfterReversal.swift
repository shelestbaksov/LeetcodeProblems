//
//  IsSameAfterReversal.swift
//  Problems
//
//  Created by Leysan Latypova on 25.10.2022.
//

import Foundation

func isSameAfterReversals(_ num: Int) -> Bool {
    if num <= 9 {
        return true
    } else {
        let num = num
        let lastDigit = num % 10
        if lastDigit == 0 {
            return false
        }
    }
    return true
}
