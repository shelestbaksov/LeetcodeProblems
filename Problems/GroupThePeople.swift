//
//  GroupThePeople.swift
//  Problems
//
//  Created by Leysan Latypova on 16.08.2022.
//

import Foundation

func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
    var result = [[Int]]()
    var dictOfgroupSizes = [Int: Int]()
    
    for (index, value) in groupSizes.enumerated() {
        dictOfgroupSizes[index] = value
    }
    
    var array = [Int]()
    let sortedDict = dictOfgroupSizes.sorted(by: {$0.1 >= $1.1})
    
    for (key, value) in sortedDict {
        if array.count != value {
            array.append(key)
        }
        if array.count == value {
            result.append(array)
            array = [Int]()
        }
    }
    return result
}
