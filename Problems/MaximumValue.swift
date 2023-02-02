//
//  MaximumValue.swift
//  Problems
//
//  Created by Leysan Latypova on 02.02.2023.
//

import Foundation

func maximumValue(_ strs: [String]) -> Int {
    var max = 0
    
    for str in strs {
        var number = 0
        
        number = Int(str) ?? str.count
        
        if max < number {
            max = number
        }
    }
    
    return max
}
