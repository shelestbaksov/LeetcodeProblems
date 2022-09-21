//
//  GuessNumberHigherOrLower.swift
//  Problems
//
//  Created by Leysan Latypova on 21.09.2022.
//

import Foundation
func guess(_ num: Int) -> Int {
    return Int.max
}

func guessNumber(_ n: Int) -> Int {
    var low = 1
    var high = n
    
    while low <= high {
        let middle = (high + low)/2
        if guess(middle) == 0 {
            return middle
        } else if guess(middle) == 1 {
            low = middle + 1
        } else if guess(middle) == -1 {
            high = middle - 1
        }
    }
    return low
}



