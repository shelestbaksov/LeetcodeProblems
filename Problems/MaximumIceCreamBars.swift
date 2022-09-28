//
//  MaximumIceCreamBars.swift
//  Problems
//
//  Created by Leysan Latypova on 28.09.2022.
//

import Foundation

func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
    let sortedCosts = costs.sorted()
    var coinsLeft = coins
    var result = 0
    
    
    for cost in sortedCosts {
        if coinsLeft >= cost {
            result += 1
            coinsLeft -= cost
        } else {
            return result
        }
    }
    return result
}
