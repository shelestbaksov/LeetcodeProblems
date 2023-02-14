//
//  MostFreq.swift
//  Problems
//
//  Created by Leysan Latypova on 14.02.2023.
//

import Foundation

func mostFrequent(_ nums: [Int], _ key: Int) -> Int {
    var dict = [Int: Int]()
    
    if nums.count == 2 {
        return nums[1]
    }
    
    for (i, num) in nums.enumerated() {
        if num == key {
            if i + 1 <= nums.count - 1 {
                dict[nums[i + 1], default: 1] += 1
            }
        }
    }
    
    let max = dict.values.max()
    
    for (key, value) in dict {
        if value == max {
            return key
        }
    }
    
    return 0
}
