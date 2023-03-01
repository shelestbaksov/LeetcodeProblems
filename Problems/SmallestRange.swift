//
//  SmallestRange.swift
//  Problems
//
//  Created by Leisan Latypova on 01.03.2023.
//

import Foundation

func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {
    return max(0, nums.max()! - nums.min()! - 2 * k)
}
