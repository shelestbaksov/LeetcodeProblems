//
//  ArithmeticSubarray.swift
//  Problems
//
//  Created by Leysan Latypova on 30.08.2022.
//

import Foundation

func checkArithmeticSubarrays(_ nums: [Int], _ l: [Int], _ r: [Int]) -> [Bool] {
    var output = [Bool]()
    
    for i in 0..<l.count {
        let sub = Array(nums[l[i]...r[i]]).sorted()
        let difference = sub[1] - sub[0]
        
        for index in 0..<sub.count - 1 {
            if sub[index + 1] - sub[index] != difference {
                output.append(false)
                break
            } else if index + 1 == sub.count - 1 {
                output.append(true)
            }
        }
    }
    return output
}
