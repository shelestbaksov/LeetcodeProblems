//
//  SortingTheSentence.swift
//  Problems
//
//  Created by Leysan Latypova on 08.09.2022.
//

import Foundation

func sortSentence(_ s: String) -> String {
    return s
        .components(separatedBy: " ")
        .sorted{ $0.last! < $1.last! }
        .map{ String($0.dropLast()) }
        .joined(separator: " ")
}
