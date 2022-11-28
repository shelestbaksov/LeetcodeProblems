//
//  LargestOddNumber.swift
//  Problems
//
//  Created by Leysan Latypova on 28.11.2022.
//

import Foundation

func largestOddNumber(_ num: String) -> String {
    
    let numStartIndex = num.startIndex
    var numIndex = num.index(before: num.endIndex)
    while numIndex >= numStartIndex {
        guard let digit = Int(String(num[numIndex])) else { break }
        if digit % 2 != 0 {
            return String(num[...numIndex])
        }
        guard numIndex > numStartIndex else { break }
        numIndex = num.index(before: numIndex)
    }
    
    return ""
}
