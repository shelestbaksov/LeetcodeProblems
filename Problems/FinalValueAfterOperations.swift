//
//  FinalValueAfterOperations.swift
//  Problems
//
//  Created by Leysan Latypova on 02.09.2022.
//

import Foundation

func finalValueAfterOperations(_ operations: [String]) -> Int {
    var result = 0
    
    for operation in operations {
        if operation.contains("+") {
            result += 1
        } else {
            result -= 1
        }
    }
    return result
}
