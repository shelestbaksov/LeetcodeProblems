//
//  goal.swift
//  ffff
//
//  Created by Leysan Latypova on 19.07.2022.
//

import Foundation


func interpret(_ command: String) -> String {
    guard !command.isEmpty else { return "" }
    let command = Array(command)
    var interpretedWord = ""
    var index = 0
    
    while index < command.count {
        if command[index] == "(" {
            if command[index + 1] == ")" {
                interpretedWord.append("o")
            } else {
                interpretedWord.append("al")
            }
        }
        if command[index] == "G" {
            interpretedWord.append("G")
        }
        index += 1
    }
    
    return interpretedWord
}
extension Int: Sequence {
    public func makeIterator() -> CountableRange<Int>.Iterator {
        return (0..<self).makeIterator()
    }
}
