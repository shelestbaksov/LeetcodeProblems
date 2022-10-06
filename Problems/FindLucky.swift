//
//  FindLucky.swift
//  Problems
//
//  Created by Leysan Latypova on 06.10.2022.
//

import Foundation

func findLucky(_ arr: [Int]) -> Int {
    var dict = [Int: Int]()

    for num in arr {
        dict[num, default: 0] += 1
    }

    var array = [Int]()
    for (key, value) in dict {
        if key == value {
            array.append(key)
        }
    }
    
    if !array.isEmpty {
        return array.max()!
    }

    return -1
}
