//
//  SemiOrderedPermutation.swift
//  Problems
//
//  Created by Leisan Latypova on 06.06.2023.
//

import Foundation

func semiOrderedPermutation(_ nums: [Int]) -> Int {
    var nums = nums
    var res = 0
    let indOfOne = nums.firstIndex(of: 1)!
    
    res += indOfOne
    nums.remove(at: indOfOne)
    nums.insert(1, at: 0)
    
    res += nums.count - 1 - nums.firstIndex(of: nums.count)!
    
    return res
}
