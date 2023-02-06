//
//  PickGifts.swift
//  Problems
//
//  Created by Leysan Latypova on 06.02.2023.
//

import Foundation


func pickGifts(_ gifts: [Int], _ k: Int) -> Int {
    var gifties = gifts
    var n = k
    
    while n != 0 {
        var max = 0
        var ind = 0
        for (i, num) in gifties.enumerated() {
            if max < num {
                max = num
                ind = i
            }
        }
        gifties[ind] = Int(Double(max).squareRoot())
        n -= 1
    }
    
    return gifties.reduce(0, +)
}
