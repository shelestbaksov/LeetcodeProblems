//
//  ReverseString.swift
//  Problems
//
//  Created by Leysan Latypova on 04.10.2022.
//

import Foundation

func reverseString(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1
    
    while left <= right {
        if s[left] != s[right] {
            s.swapAt(left, right)
        }
        left += 1
        right -= 1
    }
}
