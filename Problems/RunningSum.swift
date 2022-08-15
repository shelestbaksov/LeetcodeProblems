//
//  RunningSum.swift
//  ffff
//
//  Created by Leysan Latypova on 01.08.2022.
//

import Foundation

func runningSum(_ nums: [Int]) -> [Int] {
    var output = [Int]()
    var sum = 0
    for num in nums {
        output.append(sum + num)
        sum += num
    }
    return output
}
