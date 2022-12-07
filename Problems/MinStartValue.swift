//
//  MinStartValue.swift
//  Problems
//
//  Created by Leysan Latypova on 07.12.2022.
//

import Foundation

func minStartValue(_ nums: [Int]) -> Int {
    var startValue = 1
    
    while true {
        var sum = startValue
        var isOk = true
        
        for num in nums {
            if sum + num < 1 {
                isOk = false
                startValue += 1
                break
            } else {
                sum += num
                isOk = true
            }
        }
        
        if isOk {
            break
        }
        
    }
    return startValue
}
