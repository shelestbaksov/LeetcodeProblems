//
//  CountGoodSubstring.swift
//  Problems
//
//  Created by Leysan Latypova on 09.12.2022.
//

import Foundation


func countGoodSubstrings(_ s: String) -> Int {
    guard s.count >= 3 else { return 0 }

    let array = Array(s)
    var answer = 0

    for i in 0...array.count - 3 {
        if Set(array[i...(i + 2)]).count == 3 {
            answer += 1
        }
    }

    return answer
}
