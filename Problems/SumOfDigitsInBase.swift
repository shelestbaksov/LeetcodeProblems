//
//  SumOfDigitsInBase.swift
//  Problems
//
//  Created by Leysan Latypova on 04.10.2022.
//

import Foundation

func sumBase(_ n: Int, _ k: Int) -> Int {
    var num = n
    var result = [Int]()
    while num > 0 {
        let remainder = num % k
        result.append(remainder)
        num /= k
    }
    
    return result.reduce(0, +)
}
