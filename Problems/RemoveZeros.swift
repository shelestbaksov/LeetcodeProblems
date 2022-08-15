//
//  removeZeros.swift
//  ffff
//
//  Created by Leysan Latypova on 18.07.2022.
//

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var leftPointer = 0
    var rightPointer = 0
    
    while rightPointer < nums.count{
        let leftValue = nums[leftPointer]
        let rightValue = nums[rightPointer]
        
        if rightValue == 0 {
            rightPointer += 1
        } else if leftValue == 0 {
            nums.swapAt(leftPointer, rightPointer)
            leftPointer += 1
            rightPointer += 1
        } else {
            leftPointer += 1
            rightPointer += 1
        }
    }
}
