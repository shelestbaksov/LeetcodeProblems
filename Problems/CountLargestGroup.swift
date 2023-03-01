//
//  CountLargestGroup.swift
//  Problems
//
//  Created by Leisan Latypova on 01.03.2023.
//

import Foundation

func countLargestGroup(_ n: Int) -> Int {
    var dict = [Int: Int]()
    
    for i in 1...n {
        
        var temp = i
        var dig = 0
        
        while temp > 0 {
            let digit = temp % 10
            dig += digit
            temp /= 10
        }
        dict[dig, default: 0] += 1
    }
    
    let max = dict.values.max()!
    var count = 0
    
    for (_, val) in dict {
        if val == max {
            count += 1
        }
    }
    return count
}
