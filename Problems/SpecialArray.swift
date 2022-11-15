//
//  SpecialArray.swift
//  Problems
//
//  Created by Leysan Latypova on 15.11.2022.
//

import Foundation

func specialArray(_ nums: [Int]) -> Int {
    var res = 0
    
    while res <= nums.count {
        var count = 0
        for num in nums {
            if num >= res {
                count += 1
            }
        }
        if count > res || count < res {
            res += 1
            continue
        } else {
            return res
        }
    }
    
    return -1
}
