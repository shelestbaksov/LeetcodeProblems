//
//  CountEven.swift
//  Problems
//
//  Created by Leysan Latypova on 25.11.2022.
//

import Foundation

func countEven(_ num: Int) -> Int {
    var result = 0
    var newNum = 1
    var temp = 0
    
    while newNum <= num {
        
        if newNum < 10 {
            if newNum % 2 == 0 {
                result += 1
            } else {
                newNum += 1
                continue
            }
        } else {
            var secondTemp = newNum
            while secondTemp > 0 {
                temp += secondTemp % 10
                secondTemp /= 10
            }
            if temp % 2 == 0 {
                result += 1
            }
        }
        temp = 0
        newNum += 1
    }
    return result
}
