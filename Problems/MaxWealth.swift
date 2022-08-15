//
//  maxWealth.swift
//  ffff
//
//  Created by Leysan Latypova on 18.07.2022.
//

import Foundation

func maximumWealth(_ accounts: [[Int]]) -> Int {
    var maxWealth = 0
    
    for account in accounts {
        var wealth = 0
        for value in account {
            wealth += value
        }
        maxWealth = max(wealth, maxWealth)
    }
    return maxWealth
}
