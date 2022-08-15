//
//  Subsequence.swift
//  ffff
//
//  Created by Leysan Latypova on 02.08.2022.
//

import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
    guard t.count >= s.count else { return false }
    guard !s.isEmpty else { return true }
    let sArray = Array(s)
    let tArray = Array(t)
    var sPointer = 0
    
    for tPointer in 0..<tArray.count {
        if sPointer < sArray.count && sArray[sPointer] == tArray[tPointer] {
            sPointer += 1
        }
        if sPointer == sArray.count {
            return true
        }
    }
    return false
}

