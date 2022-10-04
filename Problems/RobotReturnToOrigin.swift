//
//  RobotReturnToOrigin.swift
//  Problems
//
//  Created by Leysan Latypova on 04.10.2022.
//

import Foundation

func judgeCircle(_ moves: String) -> Bool {
    var dict = [Character: Int]()
    for move in moves {
        dict[move, default: 0] += 1
    }
    
    var res = true
    
    dict.forEach { key, value in
        if dict["U"] == dict["D"] && dict["L"] == dict["R"] {
            res = true
        } else {
            res = false
        }
    }
    return res
}
