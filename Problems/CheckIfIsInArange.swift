//
//  CheckIfIsInArange.swift
//  Problems
//
//  Created by Leysan Latypova on 07.10.2022.
//

import Foundation

func isCovered(_ ranges: [[Int]], _ left: Int, _ right: Int) -> Bool {
    let numbers = Set(left...right)
    var covered = Set<Int>()
    
    
    for range in ranges {
        covered = covered.union(range[0]...range[1])
    }
    
    return numbers.isSubset(of: covered)
}

