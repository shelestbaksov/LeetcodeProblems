//
//  TwoFurthestHousesWithDifferentColors.swift
//  Problems
//
//  Created by Leysan Latypova on 06.10.2022.
//

import Foundation

func maxDistance(_ colors: [Int]) -> Int {
    var left = 0
    var right = colors.count - 1
    var rightToLeft = 0
    var leftToRight = 0
    while left < right {
        if colors[left] != colors[right] {
            rightToLeft = right - left
            break
        } else {
            right -= 1
        }
    }
    
    left = 0
    right = colors.count - 1
    
    while left < right {
        if colors[left] != colors[right] {
            leftToRight = right - left
            break
        } else {
            left += 1
        }
    }
    
    return max(rightToLeft, leftToRight)
}
