//
//  StoneGame.swift
//  Problems
//
//  Created by Leysan Latypova on 27.09.2022.
//

import Foundation

func stoneGame(_ piles: [Int]) -> Bool {
    let tie = piles.reduce(0, +) / 2
    var alice = 0
    var bob = 0
    var piles = piles.sorted(by: <)
    
    while alice <= tie && bob <= tie {
        alice += piles.last!
        piles.removeLast()
        bob += piles.max()!
        piles.removeLast()
    }
    
    return alice >= tie ? true : false
}
