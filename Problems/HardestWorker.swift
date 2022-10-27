//
//  HardestWorker.swift
//  Problems
//
//  Created by Leysan Latypova on 27.10.2022.
//

import Foundation

func hardestWorker(_ n: Int, _ logs: [[Int]]) -> Int {
    var workTime = [Int: Int]()
    var startTime = 0
    
    for (i, log) in logs.enumerated() {
        let finishTime = log[1]
        
        workTime[i] = abs(startTime - finishTime)
        startTime = finishTime
    }
    
    let maxTime = workTime.values.max()
    var arr = [Int]()
    
    for (key, value) in workTime {
        if value == maxTime {
            arr.append(logs[key][0])
        }
    }
    
    return arr.count == 1 ? arr.first! : arr.sorted().first!
}
