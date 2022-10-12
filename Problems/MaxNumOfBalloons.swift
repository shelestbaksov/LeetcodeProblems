//
//  MaxNumOfBalloons.swift
//  Problems
//
//  Created by Leysan Latypova on 12.10.2022.
//

import Foundation

func maxNumberOfBalloons(_ text: String) -> Int {
    var dict = [Character: Int]()
    
    for char in text {
        dict[char, default: 0] += 1
    }
    
    var count = 0
    while true {
        guard dict["b"] != nil, dict["a"] != nil, dict["l"] != nil, dict["o"] != nil, dict["n"] != nil else {
            return count
        }
        
        if dict["b"]! > 0 && dict["a"]! > 0 && dict["l"]! > 1 && dict["o"]! > 1 && dict["n"]! > 0{
            count += 1
            dict["b"]! -= 1
            dict["a"]! -= 1
            dict["l"]! -= 2
            dict["o"]! -= 2
            dict["n"]! -= 1
        }
        else {
            break
        }
    }
    
    return count
}
