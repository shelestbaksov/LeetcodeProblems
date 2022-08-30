//
//  Intersection.swift
//  Problems
//
//  Created by Leysan Latypova on 30.08.2022.
//

import Foundation

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var output = [Int]()
    let firstSet = Set(nums1)
    let secondSet = Set(nums2)
    
    for number in firstSet {
        if secondSet.contains(number) {
            output.append(number)
        }
    }
    return output
}
