//
//  FreqSort.swift
//  Problems
//
//  Created by Leysan Latypova on 25.11.2022.
//

import Foundation

func frequencySort(_ nums: [Int]) -> [Int] {
    var dict = [Int: Int]()
    
    for num in nums {
        dict[num, default: 0] += 1
    }
    
    let sorted = dict.sorted(by: { $0.value == $1.value ? $0.key > $1.key : $0.value < $1.value })
    
    var result = [Int]()
    for item in sorted {
        result += [Int](repeating: item.key, count: item.value)
    }
    
    return result
}
