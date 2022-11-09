//
//  EliminationGame.swift
//  Problems
//
//  Created by Leysan Latypova on 09.11.2022.
//

import Foundation

func lastRemaining(_ n: Int) -> Int {

    var array = Array(1...n)
    var i = 0
    var loop = 1
    
    while array.count != 1 {
        
        if i >= array.count {
            i = array.count - 1
            loop += 1
        } else if i < 0 {
            i = 0
            loop += 1
        }
        array.remove(at: i)
        
        if loop % 2 == 0 {
            i -= 2
        } else {
            i += 1
        }
    }
    return array.first!
}

 

