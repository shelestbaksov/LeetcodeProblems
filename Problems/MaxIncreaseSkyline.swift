//
//  MaxIncreaseSky;ine.swift
//  ffff
//
//  Created by Leysan Latypova on 11.08.2022.
//

import Foundation

func maxIncreaseKeepingSkyline2(_ grid: [[Int]]) -> Int {
    var totalMaxCount = 0
    
    func findMinMaxValue() -> Int {
        var minMaxValue = 0
        for index in 0..<grid.count {
            for element in 0..<grid[index].count {
                let maxValueInRow = grid[element].max()
                let maxValueInColumn = grid[index].max()
                minMaxValue = min(maxValueInRow ?? 0, maxValueInColumn ?? 0)
            }
        }
        return minMaxValue
    }
    
    for index in 0..<grid.count {
        for element in 0..<grid[index].count {
            if element < findMinMaxValue() {
                totalMaxCount += findMinMaxValue() - element
            }
        }
    }
    return totalMaxCount
}


func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
    var totalMaxCount = 0
    
    func makeColumn(column: Int) -> [Int] {
        var result = [Int]()
        for row in grid {
            let elementInRow = row[column]
            result.append(elementInRow)
        }
        return result
    }
    
    
    func findMinMaxValue(row: [Int], column: [Int]) -> Int {
        return min(row.max() ?? 0, column.max() ?? 0)
    }
    
    for index in 0..<grid.count {
        let row = grid[index]
        for element in 0..<row.count {
            let column = makeColumn(column: element)
            if row[element] < findMinMaxValue(row: row, column: column) {
                totalMaxCount += findMinMaxValue(row: row, column: column) - row[element]
            }
        }
    }
    return totalMaxCount
}
