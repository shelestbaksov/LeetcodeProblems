//
//  SelfDividingNumbers.swift
//  Problems
//
//  Created by Leysan Latypova on 26.09.2022.
//

import Foundation

func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var result = [Int]()
    
    for num in left...right {
        if num < 9 {
            result.append(num)
        } else {
            var isSelfDividing = true
            var workingNum = num
            while workingNum != 0 {
                let remainder = workingNum % 10
                guard remainder > 0 else {
                    isSelfDividing = false
                    break
                }
                if num % remainder == 0 {
                    isSelfDividing = true
                } else {
                    isSelfDividing = false
                    break
                }
                workingNum = workingNum / 10
            }
            if isSelfDividing {
                result.append(num)
            }
        }
    }
    
    return result
}
