//
//  PartitionArray.swift
//  Problems
//
//  Created by Leysan Latypova on 23.09.2022.
//

import Foundation

func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
    var numbersLessThanPivot = [Int]()
    var numbersGreaterThanPivot = [Int]()
    var numbersEqualToPivot = [Int]()
    for num in nums {
        if num < pivot {
            numbersLessThanPivot.append(num)
        } else if num == pivot {
            numbersEqualToPivot.append(num)
        } else {
            numbersGreaterThanPivot.append(num)
        }
    }
    
    return numbersLessThanPivot + numbersEqualToPivot + numbersGreaterThanPivot
}

func pivotArray2(_ nums: [Int], _ pivot: Int) -> [Int] {
    var result = nums
    var left = 0
    var right = 1
    
    while right < result.count {
        if result[left] < pivot {
            left += 1
            right += 1
        } else if result[left] >= pivot && result[right] < pivot {
            result.swapAt(left, right)
            left += 1
            right += 1
        } else if result[left] > pivot && result[right] >= pivot {
            right += 1
        } else if result[left] == pivot && result[right] == pivot {
            let number = result.remove(at: right)
            result.insert(number, at: left + 1)
            left += 1
            right += 1
        }
    }
    return result
}
