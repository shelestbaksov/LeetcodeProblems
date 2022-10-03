//
//  ReverseWordsInAstring.swift
//  Problems
//
//  Created by Leysan Latypova on 03.10.2022.
//

import Foundation

func reverseWords(_ s: String) -> String {
    let array = s.split(separator: " ")
    var output = [String]()
    
    for word in array {
        output.append(String(word.reversed()))
    }
    
    return output.joined(separator: " ")
}
