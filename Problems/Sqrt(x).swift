//
//  Sqrt(x).swift
//  Problems
//
//  Created by Leysan Latypova on 31.08.2022.
//

import Foundation

func mySqrt(_ x: Int) -> Int {
    guard x > 0 else { return 0 }
    var start = 0
    var end = x
    
    while start <= end {
        let middle = (start + end) / 2
        
        if middle * middle > x {
            end = middle - 1
        } else if middle * middle < x {
            start = middle + 1
        } else {
            return middle
        }
    }
    return end
}
