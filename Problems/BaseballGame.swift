//
//  BaseballGame.swift
//  Problems
//
//  Created by Leysan Latypova on 22.09.2022.
//

import Foundation

func calPoints(_ operations: [String]) -> Int {
    var arrayOfOperations = [Int]()
    
    for operation in operations {
        if operation == "C" {
            arrayOfOperations.removeLast()
        } else if operation == "D" {
            arrayOfOperations.append(arrayOfOperations.last! * 2)
        } else if operation == "+" {
            let last = arrayOfOperations.removeLast()
            let previous = arrayOfOperations.removeLast()
            arrayOfOperations.append(previous)
            arrayOfOperations.append(last)
            arrayOfOperations.append(last + previous)
        } else {
            arrayOfOperations.append(Int(operation)!)
        }
    }
    return arrayOfOperations.reduce(0, +)
}
