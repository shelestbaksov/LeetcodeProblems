//
//  CountOdds.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func countOdds(_ low: Int, _ high: Int) -> Int {
    var count = 0
    for number in low...high {
        if number % 2 != 0 {
            count += 1
        }
    }
    return count
}
