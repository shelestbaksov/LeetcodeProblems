//
//  CountCommonWords.swift
//  Problems
//
//  Created by Leysan Latypova on 27.10.2022.
//

import Foundation

func countWords(_ words1: [String], _ words2: [String]) -> Int {
    var dict1 = [String: Int]()
    var dict2 = [String: Int]()
    
    for string in words1 {
        dict1[string, default: 0] += 1
    }
    
    for string in words2 {
        dict2[string, default: 0] += 1
    }
    
    var count = 0
    for (key, value) in dict1 {
        if dict2[key] != nil {
            if dict2[key] == value && value == 1 {
                count += 1
            }
        }
    }
    return count
}
