//
//  CountRect.swift
//  Problems
//
//  Created by Leisan Latypova on 02.03.2023.
//

import Foundation

func countGoodRectangles(_ rectangles: [[Int]]) -> Int {
    let s = rectangles.map { min($0[0], $0[1]) }
    let m = s.max()!
    return s.filter({ $0 == m }).count
}
