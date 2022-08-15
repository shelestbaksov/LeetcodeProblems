//
//  FindAmountOfPairs.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func findAmountOfPairs(in array: [Int]) -> Int {
    var amountOfPairs = 0
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while true {
        if leftIndex == array.count - 1 {
            break
        } else if leftIndex == rightIndex {
            rightIndex = array.count - 1
            leftIndex += 1
        } else {
            let leftNumber = array[leftIndex]
            let rightNumber = array[rightIndex]
            
            if leftNumber == rightNumber {
                amountOfPairs += 1
            }
            rightIndex -= 1
        }
    }
    return amountOfPairs
}

func findAmountOfPairsV2(in array: [Int]) -> Int {
    var amountOfPairs = 0
    
    for leftIndex in (0..<array.count - 1) {
        for rightIndex in (leftIndex+1..<array.count) {
            
            let leftNumber = array[leftIndex]
            let rightNumber = array[rightIndex]
            
            if leftNumber == rightNumber {
                amountOfPairs += 1
            }
        }
    }
    return amountOfPairs
}
