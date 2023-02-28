//
//  DivisibilityArray.swift
//  Problems
//
//  Created by Leisan Latypova on 27.02.2023.
//

import Foundation

func divisibilityArray(_ word: String, _ m: Int) -> [Int] {
    let arr = word.compactMap{ $0.wholeNumberValue }
    var i = 0
    var result = [Int]()
    
    while true {
        if i == arr.count {
            break
        }
        let prefix = arr.prefix(upTo: i + 1).reduce(0, { $0 * 10 + $1 })
        
        if prefix % m == 0 {
            result.append(1)
        } else {
            result.append(0)
        }
        
        i += 1
    }
    
    return result
}
