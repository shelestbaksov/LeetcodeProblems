//
//  KthFactor.swift
//  Problems
//
//  Created by Leysan Latypova on 24.01.2023.
//

import Foundation

func kthFactor(_ n: Int, _ k: Int) -> Int {
    var array = [Int]()
    var number = 1
    
    while number <= n {
        if n % number == 0 {
            array.append(number)
        }
        number += 1
    }
    
    return array.count >= k ? array[k - 1] : -1
}
