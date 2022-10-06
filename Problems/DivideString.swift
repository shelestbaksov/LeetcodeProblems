//
//  DivideString.swift
//  Problems
//
//  Created by Leysan Latypova on 06.10.2022.
//

import Foundation

func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
    var result = [String]()
    var str = ""
    
    s.enumerated().forEach { i, char in
        str += String(char)
        if str.count == k {
            result.append(str)
            str = ""
        } else if str.count < k && i == s.count - 1 {
            while str.count != k {
                str += String(fill)
            }
            result.append(str)
        }
    }
    return result
}
