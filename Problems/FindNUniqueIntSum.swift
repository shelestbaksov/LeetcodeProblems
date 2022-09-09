//
//  FindNUniqueIntSum.swift
//  Problems
//
//  Created by Leysan Latypova on 09.09.2022.
//

import Foundation

func sumZero(_ n: Int) -> [Int] {
    guard n > 1 else { return [0] }
    
    var result = [Int]()
    var number = 1
    
    if n % 2 == 0 {
        while result.count != n {
            result.append(number)
            result.append(-number)
            number += 1
        }
    } else {
        while result.count != n - 1 {
            result.append(number)
            result.append(-number)
            number += 1
        }
        result.append(0)
    }
    return result
}
