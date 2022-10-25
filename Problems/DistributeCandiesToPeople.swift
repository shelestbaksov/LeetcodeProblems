//
//  DistributeCandiesToPeople.swift
//  Problems
//
//  Created by Leysan Latypova on 25.10.2022.
//

import Foundation

func distributeCandies(_ candies: Int, _ num_people: Int) -> [Int] {
    var result = Array(repeating: 0, count: num_people)
    var candies = candies
    var giving = 1
    var currentIndex = 0
    
    while candies > 0 {
        if giving <= candies {
            result[currentIndex] += giving
            candies -= giving
            giving += 1
        } else {
            result[currentIndex] += candies
            return result
        }
        currentIndex = currentIndex < result.count - 1 ? currentIndex + 1 : 0
    }
    return result
}
