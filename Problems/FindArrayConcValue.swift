//
//  FindArrayConcValue.swift
//  Problems
//
//  Created by Leysan Latypova on 14.02.2023.
//

import Foundation

func findTheArrayConcVal(_ nums: [Int]) -> Int {
    var numses = nums
    var conc = 0
    while numses.count != 0 {
        if numses.count == 1 {
            conc += numses[0]
            break
        }
        conc += Int(String(numses.first!) + String(numses.last!))!
        numses.removeFirst()
        numses.removeLast()
    }
    return conc
}
