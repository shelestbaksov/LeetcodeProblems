//
//  happyNumber.swift
//  ffff
//
//  Created by Leysan Latypova on 15.07.2022.
//

import Foundation

func isHappy(_ n: Int) -> Bool {
    guard n >= 1 else { return false }
    var n = n
    
    func getnext(number: Int) -> Int{
        var number = number
        var sum = 0
        
        while number > 0 {
            let digit = number % 10
            sum += digit * digit
            number /= 10
        }
        return sum
    }
    while n != 1 && n != 4 {
        n = getnext(number: n)
    }
    return n==1
}


