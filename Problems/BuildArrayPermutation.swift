//
//  BuildArrayPermutation.swift
//  Problems
//
//  Created by Leysan Latypova on 02.09.2022.
//

import Foundation

func buildArray(_ nums: [Int]) -> [Int] {
    var ans = [Int]()
    
    for index in 0..<nums.count {
        ans.insert(nums[nums[index]], at: index)
    }
    
    return ans
}
