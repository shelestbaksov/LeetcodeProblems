//
//  CountNumberOfTeams.swift
//  Problems
//
//  Created by Leysan Latypova on 27.09.2022.
//

import Foundation

func numTeams(_ rating: [Int]) -> Int {
    var count = 0
    
    for i in 0..<rating.count {
        for j in i+1..<rating.count {
            for k in j+1..<rating.count {
                if rating[i] < rating[j] {
                    if rating[j] < rating[k] {
                        count += 1
                    }
                } else if rating[i] > rating[j] {
                    if rating[j] > rating[k] {
                        count += 1
                    }
                }
            }
        }
    }
    return count
}
