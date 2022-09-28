//
//  RemoveStonesToMinimize.swift
//  Problems
//
//  Created by Leysan Latypova on 28.09.2022.
//

import Foundation

func minStoneSum(_ piles: [Int], _ k: Int) -> Int {
    var k = k
    var piles = piles
    
    while k > 0 {
        var maxNum = piles.last!
        maxNum -= (maxNum / 2)
        k -= 1
        piles.removeLast()
        piles.append(maxNum)
        piles.sort()
    }
    
    return piles.reduce(0, +)
}
