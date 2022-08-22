//
//  HasGroupSizeX.swift
//  Problems
//
//  Created by Leysan Latypova on 22.08.2022.
//

import Foundation

func hasGroupsSizeX(_ deck: [Int]) -> Bool {
    guard deck.count > 1 else { return false }
    
    var dictOfCards = [Int: Int]()
    
    for card in deck {
        dictOfCards[card] = dictOfCards[card, default: 0] + 1
    }
    
    for x in 2..<deck.count {
        if deck.count % x == 0 {
            for (_, value) in dictOfCards {
                if value % x == 0 {
                    continue
                }
                return true
            }
        }
    }
    return false
}
