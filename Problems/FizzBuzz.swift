//
//  FizzBuzz.swift
//  Problems
//
//  Created by Leysan Latypova on 26.09.2022.
//

import Foundation

func fizzBuzz(_ n: Int) -> [String] {
    var result = [String]()
    
    for number in 1...n {
        if number % 3 == 0 && number % 5 == 0 {
            result.append("FizzBuzz")
        } else if number % 3 == 0 {
            result.append("Fizz")
        } else if number % 5 == 0 {
            result.append("Buzz")
        } else {
            result.append("\(number)")
        }
    }
    return result
}
