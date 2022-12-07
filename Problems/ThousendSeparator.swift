//
//  TausendCounter.swift
//  Problems
//
//  Created by Leysan Latypova on 07.12.2022.
//

import Foundation

func thousandSeparator(_ n: Int) -> String {
    if n / 1000 == 0 {
        return String(n)
    }
    
    var array = Array(String(n).reversed())
    var i = 3
    while i < array.count {
        array.insert(".", at: i)
        i += 4
    }
    
    return String(array.reversed())
}
