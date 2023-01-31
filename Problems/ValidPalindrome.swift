//
//  ValidPalindrome.swift
//  Problems
//
//  Created by Leysan Latypova on 31.01.2023.
//

import Foundation

func validPalindrome(_ s: String) -> Bool {
    
    var array = Array(s)
    
    if array == array.reversed() {
        return true
    } else if array.count == 1 {
        return true
    } else if array.count == 2 {
        if array[0] != array[1] {
            return false
        }
    }
    
    var left = 0
    var right = array.count - 1
    var count = 0
    
    while left <= right {
        if count > 1 {
            return false
        }
        if array[left] != array[right] {
            if array[left + 1] == array[right] {
                array.remove(at: left)
                count += 1
            } else if array[right - 1] == array[left] {
                array.remove(at: right)
                right -= 2
                count += 1
            }
        }
        left += 1
        right -= 1
    }
    
    return true
}
