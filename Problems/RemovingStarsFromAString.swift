//
//  RemovingStarsFromAString.swift
//  Problems
//
//  Created by Leysan Latypova on 28.09.2022.
//

import Foundation

func removeStars(_ s: String) -> String {
    let sArr = Array(s)
    var result = [Character]()
    for char in sArr {
        if char != "*" {
            result.append(char)
        } else {
            result.removeLast()
        }
    }
    return String(result)
}
