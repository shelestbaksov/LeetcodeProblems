//
//  PlusOne.swift
//  Problems
//
//  Created by Leysan Latypova on 08.09.2022.
//

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    guard !digits.isEmpty else { return [] }
    var output = digits
    var pointer = output.count - 1
    
    while pointer >= 0 && output[pointer] == 9  {
        output[pointer] = 0
        pointer -= 1
    }
    if pointer == -1 {
        output.insert(1, at: 0)
    } else {
        output[pointer] += 1
    }
    return output
}
