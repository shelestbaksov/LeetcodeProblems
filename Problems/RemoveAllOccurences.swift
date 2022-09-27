//
//  RemoveAllOccurences.swift
//  Problems
//
//  Created by Leysan Latypova on 27.09.2022.
//

import Foundation

func removeOccurrences(_ s: String, _ part: String) -> String {
    var result = s
    
    while result.contains(part) {
        let range = result.range(of: part)!
        result = result.replacingOccurrences(of: part, with: "", range: range)
    }
    
    return result
}
