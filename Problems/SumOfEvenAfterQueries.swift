//
//  SumOfEvenAfterQueries.swift
//  Problems
//
//  Created by Leysan Latypova on 27.09.2022.
//

import Foundation

func sumEvenAfterQueries(_ nums: [Int], _ queries: [[Int]]) -> [Int] {
    var workingNums = nums
    var result = [Int]()
    
    for query in queries {
        workingNums[query[1]] += query[0]
        
        var count = 0
        for num in workingNums {
            if num % 2 == 0 {
                count += num
            }
        }
        result.append(count)
    }
    
    return result
}
