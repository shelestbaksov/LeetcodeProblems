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
    
    var maxCount = Int.min
    
    for (_, value) in dictOfCards {
        if value > maxCount {
            maxCount = value
        }
    }
    
    for x in 2..<maxCount {
        var isDivisable = true
        for value in dictOfCards.values {
            isDivisable = isDivisable && value % x == 0
        }
        
        if isDivisable {
            return true
        }
    }
    return true
}
