//
//  CountOperations.swift
//  Problems
//
//  Created by Leysan Latypova on 25.10.2022.
//

import Foundation

func countOperations(_ num1: Int, _ num2: Int) -> Int {
    var count = 0
    var num1 = num1
    var num2 = num2
    
    while num1 > 0 && num2 > 0 {
        if num1 >= num2 {
            num1 -= num2
        } else {
            num2 -= num1
        }
        count += 1
        
    }
    
    return count
}
