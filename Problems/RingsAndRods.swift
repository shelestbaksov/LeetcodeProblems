//
//  RingsAndRods.swift
//  Problems
//
//  Created by Leysan Latypova on 23.09.2022.
//

import Foundation

func countPoints(_ rings: String) -> Int {
    let rings = Array(rings)
    let ringsA = Array(rings.reversed())
    var dictOfRings = [Character: [Character]]()
    for (i, char) in ringsA.enumerated() {
        if i % 2 == 0 {
            var value = dictOfRings[char] ?? [Character]()
            value.append(ringsA[i + 1])
            dictOfRings[char] = value
        }
    }
    
    var count = 0
    for (_, value) in dictOfRings {
        if value.contains("R") {
            if value.contains("G") {
                if value.contains("B") {
                    count += 1
                }
            }
        }
    }
    return count
}
