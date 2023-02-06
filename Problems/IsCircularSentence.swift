//
//  IsCircularSentence.swift
//  Problems
//
//  Created by Leysan Latypova on 06.02.2023.
//

import Foundation

func isCircularSentence(_ sentence: String) -> Bool {
    let arr = sentence.components(separatedBy: " ")
    
    if arr.count == 1 {
        if arr[0].last == arr[0].first {
            return true
        }
    } else {
        return zip(arr, arr.dropFirst() + arr.prefix(1)).allSatisfy({$0.last == $1.first})
    }
    
    return false
}
