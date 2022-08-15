//
//  ReturnReversed.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func returnReversed(array: [Int]) -> [Int] {
    
    var newArray = [Int]()
    
    for number in array  {
        newArray.insert(number, at: 0)
    }

    return newArray
}
