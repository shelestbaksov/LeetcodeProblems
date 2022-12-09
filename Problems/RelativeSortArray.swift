//
//  RelativeSortArray.swift
//  Problems
//
//  Created by Leysan Latypova on 09.12.2022.
//

import Foundation


func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var dict = [Int: Int]()
    var result = [Int]()
    
    for i in 0..<arr1.count {
        if let value = dict[arr1[i]] {
            dict[arr1[i]] = value + 1
        } else {
            dict[arr1[i]] =  1
        }
    }
    
    for j in 0..<arr2.count {
        if var value = dict[arr2[j]] {
            while value != 0 {
                result.append(arr2[j])
                value -= 1
            }
            dict.removeValue(forKey: arr2[j])
        }
    }
    
    let sorted = dict.keys.sorted {$0 < $1}
    for item in sorted {
        if var value = dict[item] {
            while value != 0 {
                result.append(item)
                value -= 1
            }
            dict.removeValue(forKey:item)
        }
    }
    return result
}
