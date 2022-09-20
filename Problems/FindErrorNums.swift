//
//  FindErrorNums.swift
//  Problems
//
//  Created by Leysan Latypova on 20.09.2022.
//

import Foundation

func findErrorNums(_ nums: [Int]) -> [Int] {
    var perfectArray = Array(1...nums.count)
    var nums = nums.sorted()
    var result = [Int]()
    
    for index in 1..<nums.count {
        if nums[index] == nums[index - 1] {
            result.append(nums[index])
            nums.remove(at: index)
            break
        }
    }
    
    perfectArray = perfectArray.filter { !nums.contains($0) }
    result.append(perfectArray[0])
    
    return result
}
