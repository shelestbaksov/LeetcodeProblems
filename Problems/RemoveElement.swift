//
//  RemoveElement.swift
//  Problems
//
//  Created by Leysan Latypova on 19.08.2022.
//

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    guard !nums.isEmpty else { return 0 }
    
    var leftPointer = 0
    var rightPointer = 1

    
    while rightPointer != nums.count {
        if nums[leftPointer] == val && nums[rightPointer] != val {
            nums.swapAt(leftPointer, rightPointer)
            leftPointer += 1
            rightPointer += 1
        } else if nums[leftPointer] != val && nums[rightPointer] == val {
            leftPointer = rightPointer
            rightPointer += 1
        } else if nums[leftPointer] == val && nums[rightPointer] == val {
            rightPointer += 1
        } else {
            leftPointer += 1
            rightPointer += 1
        }
    }
    
    var count = 0
    
    for num in nums {
        if num == val {
            count += 1
        }
    }
    return nums.count - count
}
