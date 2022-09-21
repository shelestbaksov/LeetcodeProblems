//
//  ConvertNumToHexadecimal.swift
//  Problems
//
//  Created by Leysan Latypova on 21.09.2022.
//

import Foundation

let hexDict: [Int: String] = [
    0: "0",
    1: "1",
    2: "2",
    3: "3",
    4: "4",
    5: "5",
    6: "6",
    7: "7",
    8: "8",
    9: "9",
    10: "a",
    11: "b",
    12: "c",
    13: "d",
    14: "e",
    15: "f"
]
func toHex(_ num: Int) -> String {
    var result = ""
    var number = num
    var remainder = 0
    
    if num < 0 {
        number += Int(pow(Double(2),Double(32)))
    } else if number == 0 {
        return "0"
    }
    
    while number != 0 {
        
        remainder = number - (number/16)*16
        result += hexDict[remainder]!
        number /= 16
    }
        
    return String(result.reversed())
}
