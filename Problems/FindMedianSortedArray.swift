//
//  FindMedianSortedArray.swift
//  Problems
//
//  Created by Leysan Latypova on 09.11.2022.
//

import Foundation

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var array = [Int]()
    var firstPointer = 0
    var secondPointer = 0
    
    while true {
        if firstPointer == nums1.count {
            array += nums2.suffix(from: secondPointer)
            break
        } else if secondPointer == nums2.count {
            array += nums1.suffix(from: firstPointer)
            break
        }
        
        let firstVal = nums1[firstPointer]
        let secondVal = nums2[secondPointer]
        
        if firstVal <= secondVal {
            array.append(firstVal)
            firstPointer += 1
        } else {
            array.append(secondVal)
            secondPointer += 1
        }
    }
    
    if array.count % 2 == 0 {
        return Double(array[array.count / 2 - 1] + array[array.count / 2]) / 2
    } else {
        return Double(array[array.count / 2])
    }
}
