//
//  FindKthDistinct.swift
//  Problems
//
//  Created by Leysan Latypova on 21.11.2022.
//

import Foundation

func kthDistinct(_ arr: [String], _ k: Int) -> String {
    var dict = [String: Int]()
    var k = k
    
    for str in arr {
        dict[str, default: 0] += 1
    }
    
    
    for str in arr {
        if dict[str] == 1 {
            k -= 1
        }
        if k == 0 {
            return str
            
        }
    }
    return ""
}
