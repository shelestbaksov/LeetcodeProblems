//
//  NumberOfStudentsDoingHW.swift
//  Problems
//
//  Created by Leysan Latypova on 13.09.2022.
//

import Foundation

func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
    var result = 0
    
    for (start, finish) in zip(startTime, endTime) {
        if queryTime >= start && queryTime <= finish {
            result += 1
        }
    }
    return result
}
