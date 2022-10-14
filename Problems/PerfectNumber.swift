//
//  PerfectNumber.swift
//  Problems
//
//  Created by Leysan Latypova on 14.10.2022.
//

import Foundation


func checkPerfectNumber(_ num: Int) -> Bool {
    var divisor = 1
    var array = [Int]()
    
    while divisor < num {
        if num % divisor == 0 {
            array.append(divisor)
        }
        divisor += 1
    }
    
    return num == array.reduce(0, +)
}
