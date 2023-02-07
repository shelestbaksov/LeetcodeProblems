//
//  PivotInteger.swift
//  Problems
//
//  Created by Leysan Latypova on 07.02.2023.
//

import Foundation

func pivotInteger(_ n: Int) -> Int {
    if n == 1 {
        return 1
    }
    
    let arr = Array(1...n)
    
    let rightSum = arr.reduce(0, +)
    var leftSum = 0
    
    for i in 0..<arr.count {
        if leftSum + arr[i] == rightSum - leftSum {
            return arr[i]
        }
        leftSum += arr[i]
    }
    return -1
}
