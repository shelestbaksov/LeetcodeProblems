//
//  MinimumIndexSumOfTwoLists.swift
//  Problems
//
//  Created by Leysan Latypova on 22.09.2022.
//

import Foundation

func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
    var dictOfStr = [String: Int]()
    
    for (i, word) in list1.enumerated() {
        for (j, word2) in list2.enumerated() {
            if word == word2 {
                dictOfStr[word] = i + j
            }
        }
    }
    var minimumValue = Int.max
    for (_, value) in dictOfStr {
        if value < minimumValue {
            minimumValue = value
        }
    }
    
    var result = [String]()
    
    for (key, value) in dictOfStr {
        if value == minimumValue {
            result.append(key)
        }
    }
    return result
}
