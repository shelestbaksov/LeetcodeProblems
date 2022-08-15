//
//  romanToInt.swift
//  ffff
//
//  Created by Leysan Latypova on 12.07.2022.
//

import Foundation

let myDictionary: [Character: Int] = [
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
]

func romanToInt(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 }
    
    let myString = s.reversed()
    var previousValue = 0
    var sum = 0
    for char in myString {
        let value = myDictionary[char] ?? 0
        if value >= previousValue {
            sum += value
            previousValue = value
        } else {
            sum -= value
        }
        
    }
    return sum
}
