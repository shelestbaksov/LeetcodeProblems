//
//  CountVowelString.swift
//  Problems
//
//  Created by Leysan Latypova on 18.11.2022.
//

import Foundation

func countVowelStrings(_ n: Int) -> Int {
    ((n + 1) * (n + 2) * (n + 3) * (n + 4)) / 24
}
