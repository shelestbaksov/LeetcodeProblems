//
//  MaxArea.swift
//  Problems
//
//  Created by Leysan Latypova on 17.02.2023.
//

import Foundation

func maxArea(_ height: [Int]) -> Int {
    var left = 0
    var right = height.count - 1
    var maxArea = 0
    
    while left != right {
        let container = right - left
        let minHeight = min(height[left], height[right])
        let volume = container * minHeight
        
        maxArea = max(maxArea, volume)
        
        if height[left] < height[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    return maxArea
}
