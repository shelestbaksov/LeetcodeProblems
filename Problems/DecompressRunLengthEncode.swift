//
//  DecompressRunLengthEncode.swift
//  Problems
//
//  Created by Leysan Latypova on 15.09.2022.
//

import Foundation

func decompressRLElist(_ nums: [Int]) -> [Int] {
    var output = [Int]()
    
    for i in 0..<nums.count/2 {
        output += Array(repeating: nums[2*i+1], count: nums[2*i])
    }
    
    return output
}
