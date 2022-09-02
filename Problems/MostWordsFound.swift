//
//  MostWordsFound.swift
//  Problems
//
//  Created by Leysan Latypova on 02.09.2022.
//

import Foundation

func mostWordsFound(_ sentences: [String]) -> Int {
    var maxCount = 0
    for sentence in sentences {
        let countOfWords = sentence.components(separatedBy: " ").count
        if countOfWords > maxCount {
            maxCount = countOfWords
        }
    }
    return maxCount
}
