//
//  CheckIfAllAAppersBeforeB.swift
//  Problems
//
//  Created by Leysan Latypova on 14.09.2022.
//

import Foundation

func checkString(_ s: String) -> Bool {
    let substring = "ba"
    
    if s.contains(substring) {
        return false
    } else {
        return true
    }
}
