//
//  SortIntegersByThePowerValue.swift
//  Problems
//
//  Created by Leysan Latypova on 27.09.2022.
//

import Foundation

func getKth(_ lo: Int, _ hi: Int, _ k: Int) -> Int {
    var arrOfTuples = [(Int, Int)]()
    var power = 0
    
    for num in lo...hi {
        var tempNum = num
        while tempNum != 1 {
            if tempNum % 2 == 0 {
                tempNum /= 2
                power += 1
            } else {
                tempNum = 3*tempNum + 1
                power += 1
            }
        }
        if tempNum == 1 {
            arrOfTuples.append((num, power))
            power = 0
        }
    }
    arrOfTuples = arrOfTuples.sorted { ($0.1 < $1.1) || ($0.0 < $1.0 && $0.1 == $0.1) }
    
    return arrOfTuples[k - 1].0
}

