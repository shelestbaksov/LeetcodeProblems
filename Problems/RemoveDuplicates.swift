//
//  RemoveDuplicates.swift
//  Problems
//
//  Created by Leysan Latypova on 05.10.2022.
//

import Foundation

func removeDuplicates(_ s: String) -> String {
    var array = [Character]()
    
    for char in s {
        if char == array.last {
            array.removeLast()
            continue
        } else {
            array.append(char)
        }
    }
    return String(array)
}
