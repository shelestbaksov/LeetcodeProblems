//
//  IsMonotonic.swift
//  Problems
//
//  Created by Leysan Latypova on 08.11.2022.
//

import Foundation

func isMonotonic(_ nums: [Int]) -> Bool {
    guard nums.count > 1 else { return true }
    
    if nums == nums.sorted(by: >) {
        return true
    } else if nums == nums.sorted(by: <) {
        return true
    }
    
    return false
}
