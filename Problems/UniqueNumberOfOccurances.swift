//
//  UniqueNumberOfOccurances.swift
//  Problems
//
//  Created by Leysan Latypova on 12.10.2022.
//

import Foundation


func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var dict = [Int: Int]()
    
    for num in arr {
        dict[num, default: 0] += 1
    }
    
    var arrOfValues = [Int]()
    
    for (_, val) in dict {
        if arrOfValues.contains(val) {
            return false
        } else {
            arrOfValues.append(val)
        }
    }
    return true
}
