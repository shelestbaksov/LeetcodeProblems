//
//  SortIntByTheNumOf1.swift
//  ffff
//
//  Created by Leysan Latypova on 22.07.2022.
//

import Foundation

func sortByBits(_ arr: [Int]) -> [Int] {
    return arr.sorted(by: {$0.nonzeroBitCount < $1.nonzeroBitCount || $0.nonzeroBitCount == $1.nonzeroBitCount && $0 < $1 } )
}


