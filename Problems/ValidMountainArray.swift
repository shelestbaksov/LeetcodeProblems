//
//  ValidMountainArray.swift
//  Problems
//
//  Created by Leysan Latypova on 16.02.2023.
//

import Foundation

func validMountainArray(_ arr: [Int]) -> Bool {
    if arr.count < 3 {
        return false
    }
    
    var i = 1
    
    while i < arr.count && arr[i] > arr[i - 1] {
        i += 1
        
        if i == arr.count || arr[i] == arr[i - 1] {
            return false
        }
    }
    
    while i < arr.count && arr[i] < arr[i - 1] {
        i += 1
        if i == arr.count {
            return true
        }
    }
    return false
}
