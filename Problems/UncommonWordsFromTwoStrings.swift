//
//  UncommonWordsFromTwoStrings.swift
//  Problems
//
//  Created by Leysan Latypova on 10.11.2022.
//

import Foundation

func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
    let s3 = (s1 + " " + s2).split(separator: " ")
    var dict = [String: Int]()
    for word in s3 {
        dict[String(word), default: 0] += 1
    }
    
    var res = [String]()
    
    for (key, value) in dict {
        if value == 1 {
            res.append(key)
        }
    }
    return res
}
