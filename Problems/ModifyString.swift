//
//  ModifyString.swift
//  Problems
//
//  Created by Leysan Latypova on 08.11.2022.
//

import Foundation

func modifyString(_ s: String) -> String {
    
    var result = Array(s)
    guard result.count != 1 else { return "a" }
    
    for i in 0..<result.count {
        if result[i] == "?" {
            if i == 0 && result[i + 1] != "a"{
                result[i] = "a"
            } else if i == 0 && result[i + 1] == "a" {
                result[i] = "b"
            } else if result[i - 1] != "a" && i == result.count-1 {
                result[i] = "a"
            } else if result[i - 1] == "a" && i == result.count-1 {
                result[i] = "b"
            } else if result[i - 1] != "a" && result[i + 1] != "a" {
                result[i] = "a"
            } else if result[i - 1] != "b" && result[i + 1] != "b" {
                result[i] = "b"
            } else if result[i - 1] != "c" && result[i + 1] != "c" {
                result[i] = "c"
            }
        }
    }
    return String(result)
}

