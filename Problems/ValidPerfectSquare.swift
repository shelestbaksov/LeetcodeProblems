//
//  ValidPerfectSquare.swift
//  Problems
//
//  Created by Leysan Latypova on 22.08.2022.
//

import Foundation

func isPerfectSquare(_ num: Int) -> Bool {
    var start = 1
    var end = num
    
    while start <= end {
        let middle = (end + start)/2
        let middleSquare = middle * middle
        
        if middleSquare == num {
            return true
        } else if middleSquare > num {
            end = middle - 1
        } else if middle < num {
            start = middle + 1
        }
    }
    return false
}
