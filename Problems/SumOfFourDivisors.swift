//
//  SumOfFourDivisors.swift
//  Problems
//
//  Created by Leysan Latypova on 28.11.2022.
//

import Foundation

func sumFourDivisors(_ nums: [Int]) -> Int {
    var result = 0
    
    for num in nums {
        var div = 1
        var tempArray = [Int]()
        
        while div <= num {
            if num % div == 0 {
                tempArray.append(div)
            }
            div += 1
            if tempArray.count == 5 {
                break
            }
        }
        if tempArray.count == 4 {
            result += tempArray.reduce(0, +)
        }
        tempArray = []
        div = 1
    }
    return result
}
