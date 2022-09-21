//
//  MinimumAmountOfTimeToFillCups.swift
//  Problems
//
//  Created by Leysan Latypova on 21.09.2022.
//

import Foundation

func fillCups(_ amount: [Int]) -> Int {
    var amount1 = amount.sorted(by: >)
    var count = 0
    while amount1[0] != 0 {
        if amount1[1] == 0 {
            count += 1
            amount1[0] -= 1
        } else {
            while amount1[1] > 0 {
                amount1[0] -= 1
                amount1[1] -= 1
                count += 1
                amount1 = amount1.sorted(by: >)
                
                if amount1[1] == 0 {
                    break
                }
            }
        }
    }
    return count
}
