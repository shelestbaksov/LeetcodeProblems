//
//  FindSum.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func findSum(number: Int) -> Int? {
    guard number > 1 && number < 30_000 else { return nil }

    var remainder = number
    var sum = 0

    while remainder >= 1 {
        sum += remainder % 10
        remainder /= 10
    }

    return sum
}
