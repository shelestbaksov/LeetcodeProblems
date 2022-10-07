//
//  MostCommonWord.swift
//  Problems
//
//  Created by Leysan Latypova on 07.10.2022.
//

import Foundation

func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
    var dict = [String: Int]()
    let paragraph = paragraph.lowercased().split{ !$0.isLetter }

    for word in paragraph {
        dict[String(word), default: 0] += 1
    }
    
    for (key, _) in dict {
        for word in banned {
            if key == word {
                dict[key] = nil
            }
        }
    }
    let sortedDict = Array(dict.sorted(by: { $0.1 > $1.1 }))
    let result = sortedDict.first
    return result?.key ?? ""
}
