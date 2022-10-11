//
//  MissingNumber.swift
//  Problems
//
//  Created by Leysan Latypova on 11.10.2022.
//

import Foundation

func missingNumber(_ nums: [Int]) -> Int {
    
    for num in 0...nums.count {
        if !nums.contains(num) {
            return num
        }
    }
    
    return 0
}
