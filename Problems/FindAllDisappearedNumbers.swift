//
//  FindAllDisappearedNumbers.swift
//  Problems
//
//  Created by Leysan Latypova on 07.09.2022.
//

import Foundation

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    return Array(Set(1...nums.count).subtracting(Set(nums)))
}


