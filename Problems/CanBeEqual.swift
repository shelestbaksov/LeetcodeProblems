//
//  CanBeEqual.swift
//  Problems
//
//  Created by Leysan Latypova on 15.11.2022.
//

import Foundation

func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
    var targetDict = [Int: Int]()
    var arrDict = [Int: Int]()
    
    for num in target {
        targetDict[num, default: 0] += 1
    }
    
    for num in arr {
        arrDict[num, default: 0] += 1
    }
    
    return targetDict == arrDict
}
