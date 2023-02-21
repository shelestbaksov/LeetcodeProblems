//
//  2DSortedArray.swift
//  Problems
//
//  Created by Leisan Latypova on 21.02.2023.
//

import Foundation

func mergeArrays(_ nums1: [[Int]], _ nums2: [[Int]]) -> [[Int]] {
    var dict = [Int: Int]()
    
    for arr in nums1 {
        dict[arr[0]] = arr[1]
    }
    
    for arr in nums2 {
        if dict[arr[0]] != nil {
            dict[arr[0]]! += arr[1]
        } else {
            dict[arr[0]] = arr[1]
        }
    }
    
    return dict.map({ [$0.key, $0.value] }).sorted(by: { $0[0] < $1[0] })
}
