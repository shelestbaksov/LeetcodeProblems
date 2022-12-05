//
//  PathCrossing.swift
//  Problems
//
//  Created by Leysan Latypova on 05.12.2022.
//

import Foundation

func isPathCrossing(_ path: String) -> Bool {
    var visited = ["0,0": true]
    var y = 0
    var x = 0
    for character in path {
        if character == "N" {
            y += 1
        } else if character == "S" {
            y -= 1
        } else if character == "E" {
            x += 1
        } else if character == "W" {
            x -= 1
        }
        
        let point = "\(x),\(y)"
        
        if visited[point] != nil {
            return true
        } else {
            visited[point] = true
        }
    }
    
    return false
}
