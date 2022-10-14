//
//  ReverseStringII.swift
//  Problems
//
//  Created by Leysan Latypova on 14.10.2022.
//

import Foundation

func reverseStr(_ s: String, _ k: Int) -> String {
    var arr = Array(s)
    
    for i in stride(from: 0, through: arr.count - 1, by: k*2) {
        let amount = i + k > arr.count ? arr.count : i + k
        arr[i..<amount].reverse()
    }
    return String(arr)
}
