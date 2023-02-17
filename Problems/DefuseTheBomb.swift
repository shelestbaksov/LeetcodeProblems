//
//  DefuseTheBomb.swift
//  Problems
//
//  Created by Leysan Latypova on 17.02.2023.
//

import Foundation

func decrypt(_ code: [Int], _ k: Int) -> [Int] {
    guard k != 0 else {
        return Array(repeating: 0, count: code.count)
    }
    
    var result = code
    
    if k > 0 {
        for i in 0..<result.count {
            var count = 0
            var sum = 0
            var ind = i + 1
            while count != abs(k) {
                if ind >= result.count {
                    ind = 0
                }
                sum += code[ind]
                count += 1
                ind += 1
            }
            result[i] = sum
        }
    } else {
        for i in 0..<result.count {
            var count = 0
            var sum = 0
            var ind = i - 1
            while count != abs(k) {
                if ind < 0 {
                    ind = result.count - 1
                }
                sum += code[ind]
                count += 1
                ind -= 1
            }
            result[i] = sum
        }
    }
    return result
}
