//
//  ArrangeCoins.swift
//  Problems
//
//  Created by Leysan Latypova on 25.10.2022.
//

import Foundation

func arrangeCoins(_ n: Int) -> Int {
    var rows = 0
    var n = n
    while n != 0 {
        n -= rows
        
        if n - rows <= 0 {
            return rows
        }
        rows += 1
    }
    return rows
}
