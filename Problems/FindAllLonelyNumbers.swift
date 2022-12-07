//
//  FindAllLonelyNumbers.swift
//  Problems
//
//  Created by Leysan Latypova on 07.12.2022.
//

import Foundation

func findLonely(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    let dict = nums.reduce(into: [:]) { dict, num in dict[num, default: 0] += 1 }
    
    for num in nums {
        if let val = dict[num], val > 1 {
            continue
        }
        if dict[num - 1] != nil {
            continue
        }
        if dict[num + 1] != nil {
            continue
        }
        result.append(num)
    }
    return result
}
