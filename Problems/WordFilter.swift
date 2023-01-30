//
//  WordFilter.swift
//  Problems
//
//  Created by Leysan Latypova on 27.01.2023.
//

import Foundation

class WordFilter {
    var words = [String]()
    
    init(_ words: [String]) {
        
    }
    
    var array = [Int]()
    func f(_ pref: String, _ suff: String) -> Int {
        
        for (i, word) in words.enumerated() {
            
            if word.hasPrefix(pref) && word.hasSuffix(suff) {
                array.append(i)
            }
        }
        
        if array.count > 1 {
            return array.last!
        } else if array.count == 1 {
            return array.first!
        } else {
            return -1
        }
    }
    
}
