//
//  HaystackNeedle.swift
//  ffff
//
//  Created by Leysan Latypova on 01.08.2022.
//

import Foundation
// hello
// ll
func strStr(_ haystack: String, _ needle: String) -> Int {
    guard haystack.contains(needle) else { return -1 }
    guard !needle.isEmpty else { return 0 }
    
    let arrayOfHaystack = Array(haystack)
    let arrayOfNeedle = Array(needle)
    var result = -1
    var haystackPointer = 0
    var needlePointer = 0
    
    for index in 0..<arrayOfHaystack.count {
        if arrayOfHaystack[index] == arrayOfNeedle[needlePointer] {
            result = index
            if needlePointer == arrayOfNeedle.count {
                return index
            }
            while needlePointer < arrayOfNeedle.count - 1 {
                haystackPointer += 1
                needlePointer += 1
                if arrayOfHaystack[haystackPointer] == arrayOfNeedle[needlePointer] {
                    continue
                } else {
                    result = -1
                    needlePointer = 0
                    haystackPointer = index
                    break
                }
            }
        } else {
            result = -1
        }
    }
    return result
}

