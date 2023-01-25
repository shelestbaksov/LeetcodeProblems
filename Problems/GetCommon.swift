//
//  GetCommon.swift
//  Problems
//
//  Created by Leysan Latypova on 25.01.2023.
//

import Foundation

func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
    var first = 0
    var second = 0
    
    while true {
        if first >= nums1.count || second >= nums2.count {
            break
        }
        if nums1[first] < nums2[second] {
            first += 1
        } else if nums1[first] > nums2[second] {
            second += 1
        }  else {
            return nums1[first]
        }
    }
    return -1
}
