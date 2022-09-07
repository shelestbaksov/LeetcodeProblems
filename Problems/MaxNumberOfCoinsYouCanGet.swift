//
//  MaxNumberOfCoinsYouCanGet.swift
//  Problems
//
//  Created by Leysan Latypova on 07.09.2022.
//

import Foundation

func maxCoins(_ piles: [Int]) -> Int {
    let sortedPiles = piles.sorted()
    var min = 0
    var max = sortedPiles.count - 1
    var nextToMax = sortedPiles.count - 2
    var output = 0
    
    while min <= nextToMax {
        output += sortedPiles[nextToMax]
        min += 1
        max -= 2
        nextToMax -= 2
        
        if nextToMax == min {
            return output
        }
    }
    return output
}
