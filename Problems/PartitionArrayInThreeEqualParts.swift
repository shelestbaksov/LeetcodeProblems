//
//  PartitionArrayInThreeEqualParts.swift
//  Problems
//
//  Created by Leysan Latypova on 27.10.2022.
//

import Foundation


func canThreePartsEqualSum(_ arr: [Int]) -> Bool {
    var count = 0
    var sum = arr.reduce(0, +)
    
    if sum % 3 == 0 {
        sum /= 3
    } else{
        return false
    }
    
    var currSum = arr[0]
    var i = 0
    
    while count < 2 && i <= arr.count-2 {
        if currSum == sum {
            currSum = 0
            count += 1
        }
        i += 1
        currSum += arr[i]
    }
    return count == 2
}

