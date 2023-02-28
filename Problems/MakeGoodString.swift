//
//  MakeGoodString.swift
//  Problems
//
//  Created by Leisan Latypova on 28.02.2023.
//

import Foundation

func makeGood(_ s: String) -> String {
    var arr = s.map { String($0) }
    var pointer = 0
    
    while pointer < arr.count - 1 {
        if arr[pointer] != arr[pointer + 1] && (arr[pointer] == arr[pointer + 1].lowercased() || arr[pointer] == arr[pointer + 1].uppercased()) {
            arr.remove(at: pointer)
            arr.remove(at: pointer)
            
            pointer = max(0, pointer - 1)
            
        } else {
            pointer += 1
        }
    }
    
    return arr.joined()
}
