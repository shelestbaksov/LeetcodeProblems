//
//  NumberOfDiffIntInString.swift
//  Problems
//
//  Created by Leysan Latypova on 19.01.2023.
//

import Foundation

func numDifferentIntegers(_ word: String) -> Int {
    var result: Set<String> = []
    var temp = ""
    
    for char in word {
        if ("0"..."9").contains(char){
            temp += String(char)
            if temp.count > 1 && temp.first == "0" {
                temp.removeFirst()
            }
        } else if temp.count >= 1 {
            result.insert(temp)
            temp = ""
        }
    }
    
    if temp.count >= 1 {
        result.insert(temp)
    }
    
    return result.count
}
