//
//  OccurencesAfterBigram.swift
//  Problems
//
//  Created by Leysan Latypova on 26.10.2022.
//

import Foundation

func findOcurrences(_ text: String, _ first: String, _ second: String) -> [String] {
    let textArray = text.split(separator: " ")
    var result = [String]()
    for i in 0..<textArray.count {
        if textArray[i] == first && i != textArray.count - 1 {
            if textArray[i + 1] == second && (i + 1) != textArray.count - 1 {
                let third = String(textArray[i + 2])
                result.append(third)
            }
        }
    }
    return result
}
