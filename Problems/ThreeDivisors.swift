//
//  ThreeDivisors.swift
//  Problems
//
//  Created by Leysan Latypova on 24.10.2022.
//

import Foundation

func isThree(_ n: Int) -> Bool {
    var count = 0
    var divisor = 1
    while divisor <= n {
        if n % divisor == 0 {
            count += 1
        }
        divisor += 1
    }
    return count == 3
}
