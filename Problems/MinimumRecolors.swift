//
//  MinimumRecolors.swift
//  Problems
//
//  Created by Leysan Latypova on 09.02.2023.
//

import Foundation

func minimumRecolors(_ blocks: String, _ k: Int) -> Int {
    let block = Array(blocks)
    var result = Int.max
    var low = 0
    
    while true {
        if low + k - 1 == blocks.count {
            break
        }
        var count = 0
        for i in low...low + k - 1 {
            if block[i] == "W" {
                count += 1
            }
        }
        if result > count {
            result = count
        }
        low += 1
    }
    return result
}
