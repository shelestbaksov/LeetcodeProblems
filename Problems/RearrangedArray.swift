//
//  RearrangedArray.swift
//  Problems
//
//  Created by Leysan Latypova on 17.08.2022.
//

import Foundation

func rearrangeArray(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    var positiveArray = [Int]()
    var negativeArray = [Int]()
    
    for num in nums {
        if num >= 0 {
            positiveArray.append(num)
        } else {
            negativeArray.append(num)
        }
    }
    
    for index in 0..<positiveArray.count {
        result.append(positiveArray[index])
        result.append(negativeArray[index])
    }
    
    return result
}
