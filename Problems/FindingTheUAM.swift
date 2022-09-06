//
//  FindingTheUAM.swift
//  Problems
//
//  Created by Leysan Latypova on 06.09.2022.
//

import Foundation

func findingUsersActiveMinutes(_ logs: [[Int]], _ k: Int) -> [Int] {
    var answer = Array(repeating: 0, count: k)
    var dictOfUAM = [Int: Set<Int>]()
    
    for log in logs {
        if dictOfUAM[log[0]] != nil {
            dictOfUAM[log[0]]?.insert(log[1])
        } else {
            dictOfUAM[log[0]] = Set([log[1]])
        }
    }
    
    dictOfUAM.forEach { key, value in
        let uam = value.count
        if answer[uam - 1] == 0 {
            answer[uam - 1] = 1
        } else {
            answer[uam - 1] += 1
        }
    }
    return answer
}
