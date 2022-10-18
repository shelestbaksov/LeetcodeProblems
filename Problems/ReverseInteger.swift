//
//  ReverseInteger.swift
//  Problems
//
//  Created by Leysan Latypova on 18.10.2022.
//

import Foundation

func reverse(_ x: Int) -> Int {
    var res = 0
    var minus = 1
    var newX = x
    
    if x < 0 {
        minus = -1
        newX = x * (-1)
    }
    
    while newX > 0 {
        let pop = newX % 10
        newX /= 10
        
        let temp = res * 10 + pop
        res = temp
    }
    
    if res > Int32.max {
        return 0
    }
    
    return res * minus
}
