//
//  MaximumUnitsOnATrack.swift
//  Problems
//
//  Created by Leysan Latypova on 22.09.2022.
//

import Foundation

func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
    let sortedBoxTypes = boxTypes.sorted(by: { $0[1] > $1[1]} )
    var remainder = truckSize
    var count = 0
    
    for boxType in sortedBoxTypes {
        while remainder > 0 {
            if remainder >= boxType[0] {
                count += (boxType[0] * boxType[1])
                remainder -= boxType[0]
                break
            } else {
                count += remainder * boxType[1]
                remainder -= remainder
                break
            }
        }
    }
    return count
}
