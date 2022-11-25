//
//  GetLucky.swift
//  Problems
//
//  Created by Leysan Latypova on 25.11.2022.
//

import Foundation


func getLucky(_ s: String, _ k: Int) -> Int {
    let alphabet = ["a": "1", "b": "2", "c": "3", "d": "4", "e": "5", "f": "6", "g": "7", "h": "8", "i": "9", "j": "10", "k": "11", "l": "12", "m": "13", "n": "14", "o": "15", "p": "16", "q": "17", "r": "18", "s": "19", "t": "20", "u": "21", "v": "22", "w": "23", "x": "24", "y": "25", "z": "26"]
    var str = ""
    for char in s {
        str += alphabet[String(char)]!
    }
    
    var l = k
    var sum = 0
    
    while true {
        if l == 0 {
            break
        }
        sum = str.compactMap{$0.wholeNumberValue}.reduce(0, +)
        l -= 1
        str = "\(sum)"
    }
    
    return sum
}
