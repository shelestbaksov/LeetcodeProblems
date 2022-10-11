//
//  TwoOutOfThree.swift
//  Problems
//
//  Created by Leysan Latypova on 11.10.2022.
//

import Foundation

func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
    let nums1 = Set(nums1)
    let nums2 = Set(nums2)
    let nums3 = Set(nums3)
    var dict = [Int: Int]()
    for num in nums1 {
        dict[num, default: 0] += 1
    }
    for num in nums2 {
        dict[num, default: 0] += 1
    }
    for num in nums3 {
        dict[num, default: 0] += 1
    }
    return dict.filter { $0.1 > 1 }.keys.map { $0 }
}
