//
//  MaxPower.swift
//  Problems
//
//  Created by Leisan Latypova on 01.03.2023.
//

import Foundation


func maxPower(_ s: String) -> Int {
    guard s.count > 1 else {
        return 1
    }
  
    var count = 1
    var max = 1
    var left = 0
    var right = 1
    
    while right < s.count {
        if s[left] == s[right] {
            count += 1
            
            if max < count {
                max = count
            }
        } else {
            count = 0
        }
        left += 1
        right += 1
    }
    
    return max
}
