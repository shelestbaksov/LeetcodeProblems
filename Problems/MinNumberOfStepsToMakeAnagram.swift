//
//  MinNumberOfStepsToMakeAnagram.swift
//  Problems
//
//  Created by Leysan Latypova on 27.09.2022.
//

import Foundation

func minSteps(_ s: String, _ t: String) -> Int {
    var stepsCount = 0
    var sDict = [Character: Int]()
    var tDict = [Character: Int]()
    
    for char in s {
        sDict[char, default: 0] += 1
    }
    
    for char in t {
        tDict[char, default: 0] += 1
    }
    
    for (key, value) in sDict {
        if tDict[key] == nil {
            stepsCount += value
            tDict[key] = nil
        } else if tDict[key] != sDict[key] {
            stepsCount += abs(tDict[key]! - sDict[key]!)
            tDict[key] = nil
            sDict[key] = nil
        }
    }
    
    for (key, value) in tDict {
        if sDict[key] == nil {
            stepsCount += value
            sDict[key] = nil
        } else if tDict[key] != sDict[key] {
            stepsCount += abs(tDict[key]! - sDict[key]!)
            tDict[key] = nil
            sDict[key] = nil
        }
    }
    
    return stepsCount
}
