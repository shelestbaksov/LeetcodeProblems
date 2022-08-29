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
            needlePointer += 1
            if needlePointer == arrayOfNeedle.count {
                return index
            } else {
                
            }
        }
    }
    return result
}
