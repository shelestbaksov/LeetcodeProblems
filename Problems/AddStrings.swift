//
//  AddStrings.swift
//  Problems
//
//  Created by Leysan Latypova on 30.11.2022.
//

import Foundation

func addStrings(_ num1: String, _ num2: String) -> String {
    return String(Character(num1).wholeNumberValue! + Character(num2).wholeNumberValue!)
}
