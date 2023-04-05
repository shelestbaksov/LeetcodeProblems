//
//  Kitems.swift
//  Problems
//
//  Created by Leisan Latypova on 05.04.2023.
//

import Foundation

func kItemsWithMaximumSum(_ numOnes: Int, _ numZeros: Int, _ numNegOnes: Int, _ k: Int) -> Int {
    var result = 0
    var numOnes = numOnes
    var numZeros = numZeros
    var numNegOnes = numNegOnes
    var k = k
    
    while numOnes > 0 && k > 0 {
        result += 1
        k -= 1
        numOnes -= 1
    }
    
    while numZeros > 0 && k > 0 {
        k -= 1
        numZeros -= 1
    }
    
    while numNegOnes > 0 && k > 0 {
        result -= 1
        k -= 1
        numNegOnes -= 1
    }
    
    return result
}
