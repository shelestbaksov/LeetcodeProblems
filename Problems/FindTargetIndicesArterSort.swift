//
//  FindTargetIndicesArterSort.swift
//  Problems
//
//  Created by Leysan Latypova on 22.09.2022.
//

import Foundation

func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {
    let sortedNums = nums.sorted(by: <)
    var result = [Int]()
    
    for (i, num) in sortedNums.enumerated() {
        if num == target {
            result.append(i)
        }
    }
    return result
}
