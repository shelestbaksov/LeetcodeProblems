//
//  UglyNumber.swift
//  Problems
//
//  Created by Leysan Latypova on 21.09.2022.
//

import Foundation

func isUgly(_ n: Int) -> Bool {
    var remainder = n
    
    while remainder != 1 {
        if remainder % 2 == 0 {
            remainder /= 2
        } else if remainder % 3 == 0 {
            remainder /= 3
        } else if remainder % 5 == 0 {
            remainder /= 5
        } else {
            return false
        }
    
        if remainder == 1 {
            break
        }
    }
    return true
}
