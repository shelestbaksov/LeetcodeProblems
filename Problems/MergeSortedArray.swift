//
//  MergeSortedArra.swift
//  Problems
//
//  Created by Leysan Latypova on 09.09.2022.
//

import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var array = [Int]()
    
    for (index, value) in nums1.enumerated() {
        if index <= m - 1 {
            array.append(value)
        }
    }
    
    for (index, value) in nums2.enumerated() {
        if index <= n - 1 {
            array.append(value)
        }
    }
    nums1 = array.sorted()
}
