//
//  MergeSortedArra.swift
//  Problems
//
//  Created by Leysan Latypova on 09.09.2022.
//

import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var firstPointer = 0
    
    for num in nums2 {
        while num >= nums1[firstPointer] && nums1[firstPointer] != 0 {
            firstPointer += 1
            if firstPointer == nums1.count {
                break
            }
        }
        if num < nums1[firstPointer] {
            nums1.insert(num, at: firstPointer)
            nums1.popLast()
            continue
        }
        if num == nums1[firstPointer] {
            nums1.insert(num, at: firstPointer)
            nums1.popLast()
        }
        if nums1[firstPointer] == 0 {
            nums1.insert(num, at: firstPointer)
            nums1.popLast()
        }
    }
    print(nums1)
}
