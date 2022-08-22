//
//  PowerOfFour.swift
//  Problems
//
//  Created by Leysan Latypova on 22.08.2022.
//

import Foundation

func isPowerOfFour(_ n: Int) -> Bool {
    var power = 1
    
    while power <= n {
        if power < n {
            power *= 4
        } else {
            return true
        }
    }
    return false
}
