//
//  DivisorSubstring.swift
//  Problems
//
//  Created by Leisan Latypova on 20.03.2023.
//

import Foundation


func divisorSubstrings(_ num: Int, _ k: Int) -> Int {
    let numsStr = String(num)
    var count = 0
    
    for i in 0..<numsStr.count - k + 1 {
        let lowerBound = numsStr.index(numsStr.startIndex, offsetBy: i)
        let upperBound = numsStr.index(numsStr.startIndex, offsetBy: i + k)
        let curr = Int(numsStr[lowerBound..<upperBound])!
        if curr != 0 && num % curr == 0 {
            count += 1
        }
    }
    return count
}
