//
//  TopKfrequentNums.swift
//  Problems
//
//  Created by Leysan Latypova on 16.11.2022.
//

import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dictOfNums = [Int: Int]()
    var array = [Int]()
    
    for num in nums {
        dictOfNums[num, default: 0] += 1
    }
    
    let sortedDictOfNums = dictOfNums.sorted { $0.1 > $1.1 || $0.1 == $1.1 && $0 < $1 }
    
    for (key, _) in sortedDictOfNums {
        array.append(key)
    }
    return Array(array.prefix(k))
}
