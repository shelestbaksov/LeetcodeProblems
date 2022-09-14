//
//  GenerateStringWithCharacters.swift
//  Problems
//
//  Created by Leysan Latypova on 14.09.2022.
//

import Foundation

func generateTheString(_ n: Int) -> String {
    if n % 2 != 0 {
        return String(repeating: "a", count: n)
    } else {
        return String(repeating: "a", count: n - 1) + "b"
    }
}
