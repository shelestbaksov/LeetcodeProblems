//
//  ReplaceWords.swift
//  Problems
//
//  Created by Leysan Latypova on 28.09.2022.
//

import Foundation

func replaceWords(_ dictionary: [String], _ sentence: String) -> String {
    var result = sentence.components(separatedBy: " ")
    
    for word in dictionary {
        for (i, sent) in result.enumerated() {
            if sent.hasPrefix(word) {
                var newSent = sent
                newSent = word
                result.remove(at: i)
                result.insert(newSent, at: i)
            }
        }
    }
    return result.joined(separator: " ")
}
