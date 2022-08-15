//
//  GridProblems.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func printGrid(_ grid: [[Int]]) {
    for row in grid {
        for element in row {
            print(element, terminator: " ")
        }
        print("\n", terminator: "")
    }
    
}

func printSnake(_ grid: [[Int]]) {
    for (index, row) in grid.enumerated() {
        for element in (index % 2 == 0 ? row : row.reversed()) {
            print(element, terminator: " ")
        }
    }
}

func printDiagonals(_ grid: [[Int]]) {
    func diagonalPrint(startingRow: Int, startingColumn: Int) {
        var row = startingRow
        var column = startingColumn
        
        while row >= 0 && column < grid[row].count {
            print(grid[row][column], terminator: " ")
            row -= 1
            column += 1
        }
        print("\n", terminator: "")
    }
    
    for row in 0..<grid.count {
        diagonalPrint(startingRow: row, startingColumn: 0)
    }
    
    for column in 1..<grid[0].count {
        diagonalPrint(startingRow: grid.count - 1, startingColumn: column)
    }
}

