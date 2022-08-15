//
//  nextGreaterElement.swift
//  ffff
//
//  Created by Leysan Latypova on 18.07.2022.
//

import Foundation

func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0...nums1.count - 1 {
        var weHaveAddedNum = false
        
        for j in 0...nums2.count - 1 {
            if nums1[i] == nums2[j] {
                for num in nums2[j...] {
                    if num > nums2[j] {
                        result.append(num)
                        weHaveAddedNum = true
                        break
                    }
                }
                break
            }
        }
        if !weHaveAddedNum {
            result.append(-1)
        }
    }
    return result
}

