//
//  FancyString.swift
//  Problems
//
//  Created by Leysan Latypova on 30.11.2022.
//

import Foundation

func makeFancyString(_ s: String) -> String {
    var result = ""
    var last = Character(" ")
    var counter = 0

    for char in s {
        if last == char {
            counter += 1
        } else {
            counter = 0
        }
        if counter < 2 {
            result += String(char)
        }
        last = char
    }
    return result
}
