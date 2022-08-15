//
//  SumOfAllOddArrays.swift
//  ffff
//
//  Created by Leysan Latypova on 20.07.2022.
//

import Foundation

func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
    var sum = 0
    
    for index in 0..<arr.count {
        for secondaryIndex in index..<arr.count {
            if (secondaryIndex - index) % 2 == 0 {
                sum += arr[index...secondaryIndex].reduce(0, +)
            }
        }
    }
    return sum
}
