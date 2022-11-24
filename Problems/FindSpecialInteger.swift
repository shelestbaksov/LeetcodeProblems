//
//  FindSpecialInteger.swift
//  Problems
//
//  Created by Leysan Latypova on 24.11.2022.
//

import Foundation

func findSpecialInteger(_ arr: [Int]) -> Int {
    if arr.count == 1 {
        return arr[0]
    }
    
    var previous = arr[0]
    var count = 1
    
    for i in 1..<arr.count {
        
        if arr[i] == previous {
            count += 1
        } else {
            count = 1
            previous = arr[i]
        }
        
        if count * 4 > arr.count {
            return previous
        }
    }
    return 0
}
