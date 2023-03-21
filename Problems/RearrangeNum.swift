//
//  RearrangeNum.swift
//  Problems
//
//  Created by Leisan Latypova on 07.03.2023.
//

import Foundation

func splitNum(_ num: Int) -> Int {
    let arr = Array(String(num)).sorted()
    var str1 = ""
    var str2 = ""
    
    for i in 0..<arr.count {
        if (i % 2 == 0) {
            str1 += String(arr[i])
        } else {
            str2 += String(arr[i])
        }
    }
    
    return Int(str1)! + Int(str2)!
}
