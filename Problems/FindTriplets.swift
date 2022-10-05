//
//  FindTriplets.swift
//  Problems
//
//  Created by Leysan Latypova on 05.10.2022.
//

import Foundation

func countTriples(_ n: Int) -> Int {
    var count = 0
    for a in 1...n {
        for b in 1...n {
            for c in 1...n {
                if a*a + b*b == c * c {
                    count += 1
                }
            }
        }
    }
    return count * 2
}
