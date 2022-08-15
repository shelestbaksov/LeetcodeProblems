//
//  productAndSum.swift
//  ffff
//
//  Created by Leysan Latypova on 13.07.2022.
//

import Foundation

func subtractProductAndSum(_ n: Int) -> Int {
    var number = n
    var product = 1
    var sum = 0
    
    while number != 0 {
        let rightDigit = number % 10
        product *= rightDigit
        sum += rightDigit
        number /= 10
    }
    return product - sum
}
