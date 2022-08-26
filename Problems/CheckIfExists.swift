//
//  CheckIfExists.swift
//  Problems
//
//  Created by Leysan Latypova on 26.08.2022.
//

import Foundation

func checkIfExist(_ arr: [Int]) -> Bool {
    
    for (index, num) in arr.enumerated() {
        let numChecking = num
        let indexChecking = index
        for (index, num) in arr.enumerated() where indexChecking != index {
            if numChecking * 2 == num {
                return true
            } else {
                continue
            }
        }
    }
    return false
}
