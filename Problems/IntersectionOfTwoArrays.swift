//
//  IntersectionOfTwoArrays.swift
//  Problems
//
//  Created by Leysan Latypova on 20.09.2022.
//

import Foundation

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var longestArray = [Int]()
    var shortestArray = [Int]()
    var result = [Int]()
    
    if nums1.count >= nums2.count {
        longestArray = nums1
        shortestArray = nums2
    } else if nums1.count < nums2.count{
        longestArray = nums2
        shortestArray = nums1
    } else if nums1.count == nums2.count && nums1 == nums2 {
        return nums1
    }
    
    for num in shortestArray {
        for (index, number) in longestArray.enumerated() {
            if num == number {
                result.append(num)
                longestArray.remove(at: index)
                break
            }
        }
    }
    return result
}
