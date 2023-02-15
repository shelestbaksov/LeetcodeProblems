//
//  FindDistance.swift
//  Problems
//
//  Created by Leysan Latypova on 15.02.2023.
//

import Foundation

func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
    var res = 0
    for num in arr1 {
        var count = 0
        for num2 in arr2 {
            if abs(num - num2) <= d {
                count += 1
            }
        }
        if count == 0 {
            res += 1
        }
    }
    return res
}
