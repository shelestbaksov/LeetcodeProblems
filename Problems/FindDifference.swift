//
//  FindDifference.swift
//  Problems
//
//  Created by Leysan Latypova on 05.10.2022.
//

import Foundation

func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
    var arr1 = [Int]()
    var arr2 = [Int]()
    var result = [[Int]]()
    for int in nums1 {
        if !nums2.contains(int) {
            arr1.append(int)
        }
    }
    
    for int in nums2 {
        if !nums1.contains(int) {
            arr2.append(int)
        }
    }
    
    result.append(arr1)
    result.append(arr2)
    return result
}
