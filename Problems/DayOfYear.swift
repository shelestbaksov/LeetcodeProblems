//
//  DayOfYear.swift
//  Problems
//
//  Created by Leysan Latypova on 12.10.2022.
//

import Foundation

func dayOfYear(_ date: String) -> Int {
    let date = date.split(separator: "-")
    let normalYear = Int(date[0])! % 4 != 0
    var answer = Int(date[2])!
    
    if Int(date[1])! == 1 {
        return answer
    }
    
    for i in 1 ... Int(date[1])!-1 {
        switch i {
        case 1:
            answer += 31
        case 2:
            answer += 28 + (normalYear ? 0 : 1)
        case 3:
            answer += 31
        case 4:
            answer += 30
        case 5:
            answer += 31
        case 6:
            answer += 30
        case 7:
            answer += 31
        case 8:
            answer += 31
        case 9:
            answer += 30
        case 10:
            answer += 31
        case 11:
            answer += 30
        case 12:
            answer += 31
        default:
            break
        }
    }
    
    return answer
}
