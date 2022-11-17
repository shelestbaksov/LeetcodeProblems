//
//  Maximum69Number.swift
//  Problems
//
//  Created by Leysan Latypova on 17.11.2022.
//

import Foundation

func maximum69Number (_ num: Int) -> Int {
    var str = Array(String(num))
    
    if let firstSix = str.firstIndex(of: "6") {
        str[firstSix] = "9"
    }
    
    return Int(String(str)) ?? num
}
