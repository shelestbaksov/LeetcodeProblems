//
//  MinOperations.swift
//  Problems
//
//  Created by Leysan Latypova on 24.08.2022.
//

import Foundation

func minOperations(_ boxes: String) -> [Int] {
    var answer = [Int]()
    
    for index in 0..<boxes.count {
        var result = 0
        for (j, char) in boxes.enumerated() where j != index {
            if char == "1" {
                result += abs(j - index)
            }
        }
        answer.append(result)
    }
    return answer
}

