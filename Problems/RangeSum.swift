//
//  RangeSum.swift
//  Problems
//
//  Created by Leysan Latypova on 08.11.2022.
//

import Foundation

class NumArray {

    private let nums: [Int]

    init(_ nums: [Int]) {
        self.nums = nums
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        return nums[left...right].reduce(0, +)
    }
}
