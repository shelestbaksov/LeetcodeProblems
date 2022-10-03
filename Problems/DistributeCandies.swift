//
//  DistributeCandies.swift
//  Problems
//
//  Created by Leysan Latypova on 30.09.2022.
//

import Foundation

func distributeCandies(_ candyType: [Int]) -> Int {
    var candyDict = [Int: Int]()
    
    for type in candyType {
        candyDict[type, default: 0] += 1
    }
    
    let candyCouldEat = candyType.count / 2
    
    if candyDict.keys.count >= candyCouldEat {
        return candyCouldEat
    } else {
        return candyDict.keys.count
    }
}
