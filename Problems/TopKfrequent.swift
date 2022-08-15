//
//  TopKfrequent.swift
//  ffff
//
//  Created by Leysan Latypova on 15.08.2022.
//

import Foundation

func topKFrequent(_ words: [String], _ k: Int) -> [String] {
    var dictOfWords = [String: Int]()
    var array = [String]()
    
    for word in words {
        dictOfWords[word] = dictOfWords[word, default: 0] + 1
    }
    
    let sortedDictOfWords = dictOfWords.sorted { $0.1 > $1.1 || $0.1 == $1.1 && $0 < $1 }
    
    for (key, _) in sortedDictOfWords {
        array.append(key)
    }
    return Array(array.prefix(k))
}
