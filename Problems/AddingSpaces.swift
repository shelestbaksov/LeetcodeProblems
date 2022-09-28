//
//  AddingSpaces.swift
//  Problems
//
//  Created by Leysan Latypova on 28.09.2022.
//

import Foundation

func addSpaces(_ s: String, _ spaces: [Int]) -> String {
    var res = s
    var add = 0
    
    
    spaces.forEach {space in
        res.insert(" ", at: String.Index(utf16Offset: space + add, in: res))
        add += 1
    }
    
    return res
}
