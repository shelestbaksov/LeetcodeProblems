//
//  CountOfMatchesInTournament.swift
//  Problems
//
//  Created by Leysan Latypova on 13.10.2022.
//

import Foundation


func numberOfMatches(_ n: Int) -> Int {
    var result = 0
    var n = n
    var advance = 0
    
    while n != 1 {
        if n % 2 == 0 {
            advance = n / 2
            result += n / 2
            n = advance
        } else {
            result += (n - 1) / 2
            advance = (n - 1) / 2 + 1
            n = advance
        }
    }
    
    return result
}
