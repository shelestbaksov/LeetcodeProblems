//
//  KeepMultiplyingFoundValue.swift
//  Problems
//
//  Created by Leysan Latypova on 13.09.2022.
//

import Foundation

func findFinalValue(_ nums: [Int], _ original: Int) -> Int {
    var orig = original
    
    while true {
        for i in 0..<nums.count {
            if nums[i] == orig {
                orig *= 2
            }
        }
        if !nums.contains(orig) {
            break
        }
    }
    return orig
}
