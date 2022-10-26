//
//  FindTheTownJudge.swift
//  Problems
//
//  Created by Leysan Latypova on 26.10.2022.
//

import Foundation

func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
    guard trust.count > 0 else {
        return n == 1 ? 1 : -1
    }
    
    var normalPeople = Set<Int>()
    var judgeCandidates = [Int: Int]()
    
    for pair in trust {
        normalPeople.insert(pair[0])
        judgeCandidates[pair[1], default: 0] += 1
    }
    
    for (key, value) in judgeCandidates {
        if value == (n - 1) && !normalPeople.contains(key) {
            return key
        }
    }
    return -1
}
