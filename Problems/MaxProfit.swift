//
//  MaxProfit.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    guard prices.count > 1 else { return 0 }
    var priceOfBuying = prices[0]
    var profit = 0

    for price in prices {
        if price < priceOfBuying {
            priceOfBuying = price
        }
        profit = max(profit, price - priceOfBuying)
    }
    return profit
}
