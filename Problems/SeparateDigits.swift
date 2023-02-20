//
//  SeparateDigits.swift
//  Problems
//
//  Created by Leysan Latypova on 06.02.2023.
//

import Foundation

func separateDigits(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    
    for num in nums {
        let str = String(num).compactMap { Int(String($0)) }
        
        for digit in str {
            result.append(digit)
        }
        
    }
    
    return result
}
