//
//  DigitSum.swift
//  Problems
//
//  Created by Leysan Latypova on 15.02.2023.
//

import Foundation

func digitSum(_ s: String, _ k: Int) -> String {
    var digits = s
    
    while digits.count > k {
        var count = 0
        var tempDig = 0
        var digitsTemp = ""
        
        for (i, char) in digits.enumerated() {
            tempDig += Int(String(char))!
            count += 1
            
            if count == k {
                digitsTemp += String(tempDig)
                count = 0
                tempDig = 0
            } else if i == digits.count - 1 && count != k {
                digitsTemp += String(tempDig)
            }
        }
        
        digits = digitsTemp
    }
    
    return digits
}

