//
//  ConvertToBaseSeven.swift
//  Problems
//
//  Created by Leysan Latypova on 31.08.2022.
//

import Foundation


func convertToBase7(_ num: Int) -> String {
    var initialNum = num
    var result = ""
    
    if initialNum < 0  {
        initialNum = abs(initialNum)
    } else if initialNum == 0 {
        return "0"
    }
    
    while initialNum != 0 {
        let remainder = initialNum - (initialNum / 7) * 7
        initialNum /= 7
        result += String(remainder)
    }
    
    initialNum = num
    
    return initialNum < 0 ? "-" + String(result.reversed()) : String(result.reversed())
}
