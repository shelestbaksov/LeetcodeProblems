//
//  FindTheWinner.swift
//  Problems
//
//  Created by Leysan Latypova on 14.11.2022.
//

import Foundation


func findTheWinner(_ n: Int, _ k: Int) -> Int {
    var start = 0
    var array = Array(1...n)
    
    while array.count != 1 {
        var index = start + k - 1
        if index >= array.count { index %= array.count }
        array.remove(at: index)
        start = index
    }
    
    return array[0]
}
