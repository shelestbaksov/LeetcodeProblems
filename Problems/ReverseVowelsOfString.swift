//
//  ReverseVowelsOfString.swift
//  Problems
//
//  Created by Leysan Latypova on 30.09.2022.
//

import Foundation
func reverseVowels(_ s: String) -> String {
    var sArr = Array(s)
    var left = 0
    var right = sArr.count - 1
    let vowels: [Character] = ["A","a", "E", "e", "I", "i", "O", "o", "U", "u"]
    
    while left <= right {
        if vowels.contains(sArr[left]) && vowels.contains(sArr[right]) {
            if sArr[left] < sArr[right] || sArr[left] > sArr[right]  {
                sArr.swapAt(left, right)
                left += 1
                right -= 1
            } else {
                left += 1
                right -= 1
            }
        } else if vowels.contains(sArr[left]) && !vowels.contains(sArr[right]) {
            right -= 1
        } else if !vowels.contains(sArr[left]) && vowels.contains(sArr[right]) {
            left += 1
        } else {
            left += 1
            right -= 1
        }
    }
    
    return String(sArr)
}
