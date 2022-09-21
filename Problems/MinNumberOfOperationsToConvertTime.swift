//
//  MinNumberOfOperationsToConvertTime.swift
//  Problems
//
//  Created by Leysan Latypova on 21.09.2022.
//

import Foundation

func convertTime(_ current: String, _ correct: String) -> Int {
    let currentTime = Int(current.components(separatedBy: ":")[0])! * 60 + Int(current.components(separatedBy: ":")[1])!
    let correctTime = Int(correct.components(separatedBy: ":")[0])! * 60 + Int(correct.components(separatedBy: ":")[1])!
    var difference = correctTime - currentTime
    var result = 0
    
    while difference > 0 {
        switch difference {
        case 60...currentTime:
            difference -= 60
            result += 1
        case 15...59:
            difference -= 15
            result += 1
        case 5...14:
            difference -= 5
            result += 1
        case 1...4:
            difference -= 1
            result += 1
        default: break
        }
    }
    return result
}
