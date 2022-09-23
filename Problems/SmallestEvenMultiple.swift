//
//  SmallestEvenMultiple.swift
//  Problems
//
//  Created by Leysan Latypova on 23.09.2022.
//

import Foundation

func smallestEvenMultiple(_ n: Int) -> Int {
    var result = 1
    if n % 2 == 0 {
        return n
    } else {
        while result % 2 != 0 || result % n != 0 {
            result += 1
        }
    }
    return result
}
