//
//  NumberOfLinesToWriteString.swift
//  Problems
//
//  Created by Leysan Latypova on 13.10.2022.
//

import Foundation


func numberOfLines(_ widths: [Int], _ s: String) -> [Int] {
    var numOfLines = 1
    var dict = [Character: Int]()
    var result = [Int]()
    var width = 0
    
    for (index, char) in "abcdefghijklmnopqrstuvwxyz".enumerated() {
        dict[char] = widths[index]
    }
    
    for char in s {
        width += dict[char]!
        if width > 100 {
            let rest = abs(100 - (100 - dict[char]!))
            numOfLines += 1
            width = rest
        }
    }
    
    result.append(numOfLines)
    result.append(width)
    return result
}
