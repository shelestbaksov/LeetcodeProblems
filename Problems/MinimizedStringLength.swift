//
//  MinimizedStringLength.swift
//  Problems
//
//  Created by Leisan Latypova on 06.06.2023.
//

import Foundation

func minimizedStringLength(_ s: String) -> Int {
    
    var dict = [Character: Int]()
    
    for char in s {
        dict[char, default: 0] += 1
    }
    
    return dict.keys.count
}
