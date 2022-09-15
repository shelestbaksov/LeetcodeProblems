//
//  HeightChecker.swift
//  Problems
//
//  Created by Leysan Latypova on 15.09.2022.
//

import Foundation

func heightChecker(_ heights: [Int]) -> Int {
    let sortedHeights = heights.sorted()
    let answer = zip(sortedHeights, heights).map{$0.0 == $0.1}
    var count = 0
    for answer in answer {
        if answer == false {
            count += 1
        }
    }
    return count
}
