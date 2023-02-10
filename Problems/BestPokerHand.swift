//
//  BestPokerHand.swift
//  Problems
//
//  Created by Leysan Latypova on 10.02.2023.
//

import Foundation

func bestHand(_ ranks: [Int], _ suits: [Character]) -> String {

    if Set(suits).count == 1 {
        return "Flush"
    } else if Dictionary(ranks.map { ($0, 1) } , uniquingKeysWith: +).max(by: { $0.value < $1.value })!.value > 2 {
        return "Three of a Kind"
    } else if Set(ranks).count != 5 {
        return "Pair"
    } else {
        return "High Card"
    }
}
