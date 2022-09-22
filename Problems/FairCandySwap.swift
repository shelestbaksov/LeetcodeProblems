//
//  FairCandySwap.swift
//  Problems
//
//  Created by Leysan Latypova on 22.09.2022.
//

import Foundation

func fairCandySwap(_ aliceSizes: [Int], _ bobSizes: [Int]) -> [Int] {
    let amountAliceHas = aliceSizes.reduce(0, +)
    let amountBobHas = bobSizes.reduce(0, +)
    
    
    for num in aliceSizes {
        if bobSizes.contains(num + (amountBobHas - amountAliceHas)/2) {
            return [num, num + (amountBobHas - amountAliceHas)/2]
        }
    }
    return []
}
