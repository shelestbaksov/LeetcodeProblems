//
//  KidsWithGreatestNumberOfCandies.swift
//  Problems
//
//  Created by Leysan Latypova on 02.09.2022.
//

import Foundation

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    let greatestNumberOfCandy = candies.max()!
    var resultArrayOfBools = [Bool]()
    
    for candy in candies {
        if candy + extraCandies >= greatestNumberOfCandy {
            resultArrayOfBools.append(true)
        } else {
            resultArrayOfBools.append(false)
        }
    }
    return resultArrayOfBools
}
