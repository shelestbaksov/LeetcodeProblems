//
//  MostFrequentEvenElement.swift
//  Problems
//
//  Created by Leysan Latypova on 10.10.2022.
//

import Foundation

func mostFrequentEven(_ nums: [Int]) -> Int {
    var dict = [Int: Int] ()
    
    for num in nums {
        if num % 2 == 0 {
            dict[num, default: 0] += 1
        }
    }
    
    if let max = dict.values.max() {
        return dict.filter{ $0.value == max }.keys.min()!
    }
    
    return -1
}
