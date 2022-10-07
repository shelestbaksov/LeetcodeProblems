//
//  ContainsNearbyDuplicate.swift
//  Problems
//
//  Created by Leysan Latypova on 07.10.2022.
//

import Foundation


func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var dict = [Int: [Int]]()
    for (i, num) in nums.enumerated() {
        dict[num, default: []].append(i)
    }
    
    for (_, value) in dict {
        var left = 0
        var right = 1
        if value.count >= 2 {
            while right < value.count {
                if abs(value[left] - value[right]) <= k {
                    return true
                }
                left += 1
                right += 1
            }
        }
    }
    return false
}
