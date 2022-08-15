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
    var needlePointer = 0
    var index = -1
    
    for haystackPointer in 0..<arrayOfHaystack.count {
        if arrayOfHaystack[haystackPointer] == arrayOfNeedle.first {
            index = haystackPointer
            needlePointer += 1
        }
            
        
    }
    return index
}
