//
//  JewelsAndStones.swift
//  Problems
//
//  Created by Leysan Latypova on 08.09.2022.
//

import Foundation

func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    var count = 0
    for jewel in jewels {
        for stone in stones {
            if jewel == stone {
                count += 1
            }
        }
    }
    return count
}
