//
//  BackSpaceCompare.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func backspaceCompare(_ s: String, _ t: String) -> Bool {
    var newS = ""
    var newT = ""
    
    for char in s {
        if char != "#" {
            newS += "\(char)"
        } else {
            newS.popLast()
        }
    }
    
    for char in t {
        if char != "#" {
            newT += "\(char)"
        } else {
            newT.popLast()
        }
    }
    return newS == newT
}
