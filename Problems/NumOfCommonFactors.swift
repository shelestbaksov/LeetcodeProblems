//
//  NumOfCommonFactors.swift
//  Problems
//
//  Created by Leysan Latypova on 12.10.2022.
//

import Foundation

func commonFactors(_ a: Int, _ b: Int) -> Int {
    var count = 0
    
    for num in 1...min(a, b) {
        if a % num == 0 && b % num == 0 {
            count += 1
        }
    }
    
    return count
}
