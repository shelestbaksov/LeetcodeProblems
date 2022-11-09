//
//  DivideTwoIntegers.swift
//  Problems
//
//  Created by Leysan Latypova on 09.11.2022.
//

import Foundation

func divide(_ dividend: Int, _ divisor: Int) -> Int {
    if dividend == -2147483648 {
        if divisor == -1 {
            return 2147483647
        }
    }
    return dividend / divisor
}
