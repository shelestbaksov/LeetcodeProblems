//
//  PowerOfTwo.swift
//  Problems
//
//  Created by Leysan Latypova on 12.10.2022.
//

import Foundation

func isPowerOfTwo2(_ n: Int) -> Bool {
    var power = 1
    
    while power <= n {
        if power == n {
            return true
        }
        power *= 2
    }
    return false
}
