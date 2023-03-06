//
//  GetNoZeroIntegers.swift
//  Problems
//
//  Created by Leisan Latypova on 06.03.2023.
//

import Foundation

func getNoZeroIntegers(_ n: Int) -> [Int] {
    var i = 1
    
    while i < n {
        if "\(n - i)".contains("0") || "\(i)".contains("0") {
            i += 1
        } else {
            return [i, n - i]
        }
    }
    
    return []
}
