//
//  AnswerQueries.swift
//  Problems
//
//  Created by Leysan Latypova on 09.02.2023.
//

import Foundation

func answerQueries(_ nums: [Int], _ queries: [Int]) -> [Int] {
    let sorted = nums.sorted()
    var answer = [Int]()
    
    
    for query in queries {
        var length = sorted.count
        
        while true {
            if query >= sorted.prefix(length).reduce(0, +) {
                answer.append(length)
                break
            } else {
                length -= 1
            }
        }
    }
    
    return answer
}
