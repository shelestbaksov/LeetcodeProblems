//
//  SortColors.swift
//  Problems
//
//  Created by Leysan Latypova on 10.11.2022.
//

import Foundation

func sortColors(_ nums: inout [Int]) {
    guard nums.count > 1 else {
        return
    }
    var beginning = 0
    var right = nums.count - 1
    var i = 0
    
    while i <= right {
        let num = nums[i]
        
        if num == 0 {
            nums.swapAt(i, beginning)
            beginning += 1
            i += 1
        } else if num == 2 {
            nums.swapAt(i, right)
            right -= 1
        } else {
           i += 1
        }
    }
}
