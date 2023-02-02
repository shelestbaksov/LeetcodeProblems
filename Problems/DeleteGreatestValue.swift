//
//  DeleteGreatestValue.swift
//  Problems
//
//  Created by Leysan Latypova on 02.02.2023.
//

import Foundation


func deleteGreatestValue(_ grid: [[Int]]) -> Int {
    var array = [Int]()
    var grid = grid
    
    for i in 0..<grid.count {
        grid[i].sort()
    }
    
    while grid[0].count > 0 {
        var temp = [Int]()
        for i in 0..<grid.count {
            temp.append(grid[i].removeLast())
        }
        array.append(temp.max()!)
    }
    return array.reduce(0, +)
}



