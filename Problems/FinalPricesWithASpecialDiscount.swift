//
//  FinalPricesWithASpecialDiscount.swift
//  Problems
//
//  Created by Leysan Latypova on 13.09.2022.
//

import Foundation

func finalPrices(_ prices: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<prices.count {
        for j in i + 1..<prices.count {
            if prices[j] <= prices[i] {
                result.append(prices[i] - prices[j])
                break
            } else if prices[j] > prices[i] && j == prices.count - 1{
                result.append(prices[i])
            }
        }
        if i == prices.count - 1 {
            result.append(prices[i])
        }
    }
    return result
}
