//
//  CountGoodTriplets.swift
//  Problems
//
//  Created by Leysan Latypova on 15.09.2022.
//

import Foundation

func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
    var count = 0
    
    for i in 0..<arr.count{
        for j in i+1..<arr.count {
            for k in j+1..<arr.count {
                if abs(arr[i] - arr[j]) <= a && abs(arr[j] - arr[k]) <= b && abs(arr[i] - arr[k]) <= c {
                    count += 1
                }
            }
        }
    }
    return count
}
