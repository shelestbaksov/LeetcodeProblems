//
//  SearchInsertPosition.swift
//  Problems
//
//  Created by Leysan Latypova on 08.09.2022.
//

import Foundation
//1 число есть
//2 число больше/меньше конца начала
//3 число между
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    let newNums = nums
    
    if newNums.contains(target) {
        return newNums.firstIndex(of: target) ?? 0
    } else {
        if target > newNums[newNums.count - 1] {
            return newNums.count
        } else if target < newNums[0] {
            return 0
        } else {
            var rightPointer = 0
            var leftPointer = 1
            
            while leftPointer != newNums.count {
                if newNums[rightPointer] < target && newNums[leftPointer] > target {
                    return leftPointer
                }
                rightPointer += 1
                leftPointer += 1
            }
        }
    }
    return 0
}
