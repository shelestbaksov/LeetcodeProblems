//
//  FrequencySort.swift
//  Problems
//
//  Created by Leysan Latypova on 15.11.2022.
//

import Foundation

func frequencySort(_ s: String) -> String {
    var dict = [Character: Int]()
    
    for char in s {
        dict[char, default: 0] += 1
    }
    
    let sorted = dict.sorted(by: { $0.value > $1.value })
    
    var res = ""
    
    for (key, val) in sorted {
        var amount = val
        while amount != 0 {
            res += String(key)
            amount -= 1
        }
    }
    return res
}
