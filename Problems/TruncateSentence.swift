//
//  TruncateSentence.swift
//  Problems
//
//  Created by Leysan Latypova on 05.09.2022.
//

import Foundation

func truncateSentence(_ s: String, _ k: Int) -> String {
    let words = s.components(separatedBy: " ")
    
    return String(words.prefix(k).joined(separator: " "))
}
