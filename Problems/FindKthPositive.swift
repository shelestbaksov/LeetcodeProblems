//
//  АштвЛерЗщышешму.swift
//  Problems
//
//  Created by Leysan Latypova on 06.12.2022.
//

import Foundation

func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
    let array = Array(1...arr.count + k)
    var nums = [Int]()
    
    for num in array {
        if !arr.contains(num) {
            nums.append(num)
        }
    }
    
    return nums[k - 1]
}
