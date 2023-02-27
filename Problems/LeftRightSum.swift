//
//  LeftRightSum.swift
//  Problems
//
//  Created by Leisan Latypova on 27.02.2023.
//

import Foundation

func leftRigthDifference(_ nums: [Int]) -> [Int] {
    guard nums.count > 1 else {
        return [0]
    }
    var result = [Int]()
    
    for (i, _) in nums.enumerated() {
        let leftSum = i == 0 ? 0 : nums.prefix(upTo: i).reduce(0, +)
        let righSum = i == nums.count - 1 ? 0 : nums.suffix(from: i + 1).reduce(0, +)
        
        result.append(abs(leftSum - righSum))
        
    }
    return result
}
