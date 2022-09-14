//
//  CountItemsMatchingArule.swift
//  Problems
//
//  Created by Leysan Latypova on 14.09.2022.
//

import Foundation

func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
    let index: Int
    
    switch ruleKey {
    case "type":
        index = 0
    case "color":
        index = 1
    default:
        index = 2
    }
    
    var count = 0
    for item in items {
        if item[index] == ruleValue {
            count += 1
        }
    }
    return count
}
