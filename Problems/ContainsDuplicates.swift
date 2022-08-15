//
//  ContainsDuplicates.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    var counts: [Int: Int] = [:]

    for number in nums {
        let existingCount = counts[number] ?? 0
        counts[number] = existingCount + 1

        if counts[number]! > 1 {
            return true
        }
    }
    return false
}
