//
//  MaxCountPosAndNeg.swift
//  Problems
//
//  Created by Leysan Latypova on 20.01.2023.
//

import Foundation


func maximumCount(_ nums: [Int]) -> Int {
    var pos = [Int]()
    var neg = [Int]()
    
    for num in nums {
        if num > 0 {
            pos.append(num)
        } else if num < 0 {
            neg.append(num)
        }
    }
    return max(pos.count, neg.count)
}
