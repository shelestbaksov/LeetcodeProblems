//
//  FindTheAmountOfNumbers.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func findTheAmountOfNumbers(n: Int, k: Int) -> Int {
//    var array = [Int]()
//    var amount = 0
//
//    for number in (1...n) {
//        if number % k == 0 {
//            array.append(number)
//        }
//    }
//    print(array.count)
//
//
//    for number in (1...n) {
//        if number % k == 0 {
//            amount += 1
//        }
//    }
    
    var amount = 0
    var floatingPoint = k

    while floatingPoint <= n {
        amount += 1
        floatingPoint += k

    }
    
    return n/k
}
