//
//  Fibonacci.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func fib(_ n: Int) -> Int {
    guard n > 1 else { return n }

    var firstNumber = 0
    var secondNumber = 1
    var fibNumber = 0

    for _ in 2...n {
        fibNumber = firstNumber + secondNumber
        firstNumber = secondNumber
        secondNumber = fibNumber
    }
    return fibNumber
}
