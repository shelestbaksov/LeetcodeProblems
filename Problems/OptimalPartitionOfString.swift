//
//  OptimalPartitionOfString.swift
//  Problems
//
//  Created by Leysan Latypova on 27.09.2022.
//

import Foundation

func partitionString(_ s: String) -> Int {
    var result = 1
    var workingArray = [Character]()
    
    for char in s {
        if !workingArray.contains(char) {
            workingArray.append(char)
        } else {
            workingArray.removeAll()
            result += 1
            workingArray.append(char)
        }
    }
    return result
}
