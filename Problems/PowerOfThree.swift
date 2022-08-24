//
//  PowerOfThree.swift
//  Problems
//
//  Created by Leysan Latypova on 24.08.2022.
//

import Foundation

func isPowerOfThree(_ n: Int) -> Bool {
    var power = 1
    
    while power <= n {
        if power < n {
            power *= 3
        } else {
            return true
        }
    }
    return false
}
