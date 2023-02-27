//
//  CheckRecord.swift
//  Problems
//
//  Created by Leisan Latypova on 27.02.2023.
//

import Foundation

func checkRecord(_ s: String) -> Bool {
    var aCount = 0
    var lCount = 0
    
    for char in s {
        if char == "A" {
            aCount += 1
            
            if aCount >= 2 {
                return false
            }
            lCount = 0
        } else if char == "L" {
            lCount += 1
            
            if lCount >= 3 {
                return false
            }
        } else if char == "P" {
            lCount = 0
        }
    }
    return true
}
