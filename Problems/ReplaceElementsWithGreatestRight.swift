//
//  ReplaceElementsWithGreatestRight.swift
//  Problems
//
//  Created by Leysan Latypova on 04.10.2022.
//

import Foundation


func replaceElements(_ arr: [Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    }
    
    var result = [Int]()
    
    for i in 0..<arr.count {
        if i == arr.count - 1 {
            result.append(-1)
            break
        }
        result.append(arr.suffix(from: i + 1).max()!)
    }
    
    return result
}
