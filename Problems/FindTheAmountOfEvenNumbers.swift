//
//  FindTheAmountOfEvenNumbers.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func findTheAmountOfEvenNumbers(in array: [Int]) -> Int {
    var count = 0
    
    
    for (index, number) in array.enumerated() {
        if number % 2 == 0 && index % 2 == 0 {
            count += 1
        }
    }
    
    return count
}
