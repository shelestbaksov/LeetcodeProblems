//
//  ReverseOnlyLetters.swift
//  Problems
//
//  Created by Leysan Latypova on 29.11.2022.
//

import Foundation

func reverseOnlyLetters(_ s: String) -> String {
    let abc = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var array = Array(s)
    var left = 0
    var right = array.count - 1
    
    while true {
        let leftVal = array[left]
        let rightVal = array[right]
        
        if left >= right {
            break
        }
        
        if abc.contains(leftVal) && abc.contains(rightVal) {
            array.swapAt(left, right)
            left += 1
            right -= 1
        } else if abc.contains(leftVal) && !abc.contains(rightVal) {
            right -= 1
        } else if !abc.contains(leftVal) && abc.contains(rightVal) {
            left += 1
        } else {
            left += 1
            right -= 1
        }
    }
    return String(array)
}
