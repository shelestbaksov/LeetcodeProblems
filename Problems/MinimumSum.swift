//
//  MinimumSum.swift
//  Problems
//
//  Created by Leysan Latypova on 03.10.2022.
//

import Foundation

func minimumSum(_ num: Int) -> Int {
    var num = num
    var array = [Int]()
    
    while num >= 10 {
        array.append(num % 10)
        num = num/10
        if num <= 10 {
            array.append(num)
        }
    }
    
    let sortedArray = array.sorted()
    
    let firstNum = sortedArray[0] * 10 + sortedArray[3]
    let secondNum = sortedArray[1] * 10 + sortedArray[2]
    
    return firstNum + secondNum
}
