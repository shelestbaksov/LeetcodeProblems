//
//  CreateTargetArray.swift
//  Problems
//
//  Created by Leysan Latypova on 29.08.2022.
//

import Foundation

func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
    let indexArray = index
    var target = [Int]()
    for (index, num) in nums.enumerated() {
        for i in 0..<indexArray.count where i == index{
            target.insert(num, at: indexArray[i])
            break
        }
    }
    return target
}
