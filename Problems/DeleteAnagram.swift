//
//  DeleteAnagram.swift
//  Problems
//
//  Created by Leysan Latypova on 31.10.2022.
//

import Foundation

func removeAnagrams(_ words: [String]) -> [String] {
    var words = words
    var i = 0
    
    while i < words.count - 1 {
        
        if words[i].sorted() == words[i + 1].sorted() {
            words.remove(at: i + 1)
        }
        else {
            i += 1
        }
    }
    return words
}
